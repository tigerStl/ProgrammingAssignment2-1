## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  #initializing the inverse property
  m<-NULL
  #setting the matrix
  set <- function(y){
    x<<-y
    m<<-NULL
  }
  # getting the matrix
  get <- function() x
  #setting the inverse of a matrix
  setInverse <- function(inverseMatrix){
    m<<-inverseMatrix
  }
  #getting the inverse of a matrix
  getInverse <- function(){
    m
  }
  #list of above functions -returning
  list(set = set, get = get, getInverse = getInverse, setInverse = setInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  #returning inverse mtrix if it exists
  if (!is.null(m)){
    message("getting cached data")
    return (m)
  }
  #getting matrix from our object matrix
  data <- x$get()
  #calculating inverse 
  m <- solve(data)
  #setting inverse matrix to the object m 
  x$setInverse(m)
  m
}
