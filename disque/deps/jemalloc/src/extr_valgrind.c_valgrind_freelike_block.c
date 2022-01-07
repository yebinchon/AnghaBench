
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VALGRIND_FREELIKE_BLOCK (void*,size_t) ;

void
valgrind_freelike_block(void *ptr, size_t usize)
{

 VALGRIND_FREELIKE_BLOCK(ptr, usize);
}
