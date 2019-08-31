# Your Code Here
def map(arr)
  arr_ret = []
  arr.length.times do |i|
    arr_ret[i]= yield(arr[i])
  end
  arr_ret
end
  
def reduce(arr, start = nil)
  increment = 0
  unless start 
   ret_val = arr[0]
   increment = 1
  else
    ret_val = start
  end
  
  length = arr.length-increment
  length.times do |i|
    ret_val = yield(ret_val,arr[i+increment])
  end
  
  ret_val
end


source_array = [ false, nil, nil, nil, true]
hmmm = reduce(source_array){|memo, n| memo || n}
#hmmm = reduce(source_array){|memo, n| memo && n}
puts hmmm