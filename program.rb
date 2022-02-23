#!/usr/bin/env ruby

# This program will implement bubble sort

# Logic
# We accept an array as the parameter of the method bubble_sort
# Then loop the body as long as the array is not sorted.
#
# The while loop will run as long as the sorted = false
# so we are making sorted = true only when each element is
# run and checked if they are in the proper order.
#
# When we are done iterating through all the elements in
# the array then we have sorted = false.
# Now after ending the inner loop sorted becomes true.
# And it will not enter the inner loop again. So the outer
# loop breaks. And the array will be sorted.

# method starts here
def bubble_sort(arr)
  length = arr.length
  sorted = false

  while not sorted
    sorted = true

    (length - 1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = false
      end
    end
  end
  arr
end

# testing
test_array = [2, 1, 4, 7, 9, 8, 3]
test_sort = bubble_sort(test_array)
p test_sort
