
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MEMAllocFromExpHeapEx (int ,unsigned int,unsigned int) ;
 int MEMGetBaseHeapHandle (int ) ;
 int MEM_BASE_HEAP_MEM2 ;

void * MEM2_alloc(unsigned int size, unsigned int align)
{
   return MEMAllocFromExpHeapEx(MEMGetBaseHeapHandle(MEM_BASE_HEAP_MEM2), size, align);
}
