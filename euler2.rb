class Euler2

	def sequence(num1, num2)
		num1 + num2

	end

	def array_push(array, num)
		array.push(num)

	end

	def add_last_two(array)
		last_num = array[-1]
		sec_last_num = array[-2]
		sequence(last_num, sec_last_num)

	end

	def range(array_limit)
		f_seq = [1, 2]
		last_num = f_seq[-1]
		range = (1...array_limit)

		range.each do |i|
		 
			if (last_num < array_limit - 1)
				new_number = add_last_two(f_seq)
				array_push(f_seq, new_number)
				last_num = f_seq[-1]
			end
		end
		f_seq
	end

	def even_values(array_limit, array)
		range(array_limit)
		even_array = []
		
		array.each do |i|
			if i % 2 == 0
				even_array.push(i)
			end
		end
		even_array
	end

	def add_even_values(array_limit, array)
		even_values(array_limit, array)
		total = 0

		array.each do |i|
			total += i
		end
		p total
	end

end

x = Euler2.new
fib_seq = x.range(4000000)
even_fib_seq = x.even_values(4000000, fib_seq)
total_even_fib_seq = x.add_even_values(4000000, even_fib_seq)



