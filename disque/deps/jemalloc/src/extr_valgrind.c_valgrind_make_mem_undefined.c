
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VALGRIND_MAKE_MEM_UNDEFINED (void*,size_t) ;

void
valgrind_make_mem_undefined(void *ptr, size_t usize)
{

 VALGRIND_MAKE_MEM_UNDEFINED(ptr, usize);
}
