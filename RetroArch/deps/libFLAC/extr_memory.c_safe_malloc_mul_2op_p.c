
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SIZE_MAX ;
 void* malloc (size_t) ;

void *safe_malloc_mul_2op_p(size_t size1, size_t size2)
{
 if(!size1 || !size2)
  return malloc(1);
 if(size1 > SIZE_MAX / size2)
  return 0;
 return malloc(size1*size2);
}
