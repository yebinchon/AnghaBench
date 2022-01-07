
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* allocate (unsigned long,unsigned int) ;

void *newarray(unsigned long m, unsigned long n, unsigned a) {
 return allocate(m*n, a);
}
