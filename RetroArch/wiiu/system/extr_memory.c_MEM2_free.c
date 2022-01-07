
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEMFreeToExpHeap (int ,void*) ;
 int MEMGetBaseHeapHandle (int ) ;
 int MEM_BASE_HEAP_MEM2 ;

void MEM2_free(void *ptr)
{
   if (ptr)
      MEMFreeToExpHeap(MEMGetBaseHeapHandle(MEM_BASE_HEAP_MEM2), ptr);
}
