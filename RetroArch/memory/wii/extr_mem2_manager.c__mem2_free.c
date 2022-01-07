
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __lwp_heap_free (int *,void*) ;
 int gx_mem2_heap ;

void _mem2_free(void *ptr)
{
   if (ptr)
      __lwp_heap_free(&gx_mem2_heap, ptr);
}
