
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEMDestroyExpHeap (int *) ;
 int MEMFreeToFrmHeap (int ,int ) ;
 int MEMGetBaseHeapHandle (int ) ;
 int MEM_BASE_HEAP_FG ;
 int MEM_BASE_HEAP_MEM1 ;
 int MEM_FRAME_HEAP_FREE_ALL ;
 int * bucket_heap ;
 int * mem1_heap ;

void memoryRelease(void)
{
    MEMDestroyExpHeap(mem1_heap);
    MEMFreeToFrmHeap(MEMGetBaseHeapHandle(MEM_BASE_HEAP_MEM1), MEM_FRAME_HEAP_FREE_ALL);
    mem1_heap = ((void*)0);

    MEMDestroyExpHeap(bucket_heap);
    MEMFreeToFrmHeap(MEMGetBaseHeapHandle(MEM_BASE_HEAP_FG), MEM_FRAME_HEAP_FREE_ALL);
    bucket_heap = ((void*)0);
}
