# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

# Val Gidzinski - 8.20.18
# binary_to_decimal method
def binary_to_decimal(binary_array)

  decimal = 0
  i = 0
  j = binary_array.length - 1

  until j < 0
    decimal += binary_array[j] * (2 ** i)
    i += 1
    j -= 1
  end
  
  return decimal
end

  # Earlier version using enumerable methods,
  #  which isn't allowed for this assignment

  # decimals = []
  #
  # test_array = Array.new(binary_array)
  #
  # binary_array.each do |i|
  #
  #     n = test_array.length - 1
  #
  #     decimals << i * (2 ** n)
  #
  #     test_array.delete_at(0)
  #
  #   end
  #
  # decimal = decimals.reduce (:+)
  #
  # return decimal
