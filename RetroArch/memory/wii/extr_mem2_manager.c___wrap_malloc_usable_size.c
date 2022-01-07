
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 size_t __lwp_heap_block_size (int *,void*) ;
 size_t __real_malloc_usable_size (void*) ;
 int gx_mem2_heap ;

__attribute__ ((used)) size_t __wrap_malloc_usable_size(void *p)
{
   if (((uint32_t) p & 0x10000000) != 0)
      return __lwp_heap_block_size(&gx_mem2_heap, p);
   return __real_malloc_usable_size(p);
}
