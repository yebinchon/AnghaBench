
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 void* __lwp_heap_allocate (int *,scalar_t__) ;
 int gx_mem2_heap ;

void *_mem2_memalign(uint8_t align, uint32_t size)
{
   if(size == 0)
      return ((void*)0);
   return __lwp_heap_allocate(&gx_mem2_heap, size);
}
