
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _reent {int dummy; } ;


 void* MEMAllocFromExpHeapEx (int ,size_t,size_t) ;
 int MEMGetBaseHeapHandle (int ) ;
 int MEM_BASE_HEAP_MEM2 ;

void* _memalign_r(struct _reent *r, size_t alignment, size_t size)
{
   return MEMAllocFromExpHeapEx(MEMGetBaseHeapHandle(MEM_BASE_HEAP_MEM2), size, alignment);
}
