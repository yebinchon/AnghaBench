
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MEMHeapHandle ;


 void* MEMAllocFromFrmHeapEx (int ,unsigned int,int) ;
 void* MEMCreateExpHeapEx (void*,unsigned int,int ) ;
 unsigned int MEMGetAllocatableSizeForFrmHeapEx (int ,int) ;
 int MEMGetBaseHeapHandle (int ) ;
 int MEM_BASE_HEAP_FG ;
 int MEM_BASE_HEAP_MEM1 ;
 void* bucket_heap ;
 void* mem1_heap ;

void memoryInitialize(void)
{
   unsigned int bucket_allocatable_size;
   MEMHeapHandle bucket_heap_handle;
   void *bucket_memory = ((void*)0);
   MEMHeapHandle mem1_heap_handle = MEMGetBaseHeapHandle(MEM_BASE_HEAP_MEM1);
   unsigned int mem1_allocatable_size = MEMGetAllocatableSizeForFrmHeapEx(mem1_heap_handle, 4);
   void *mem1_memory = MEMAllocFromFrmHeapEx(mem1_heap_handle, mem1_allocatable_size, 4);

   if(mem1_memory)
      mem1_heap = MEMCreateExpHeapEx(mem1_memory,
            mem1_allocatable_size, 0);

   bucket_heap_handle = MEMGetBaseHeapHandle(MEM_BASE_HEAP_FG);
   bucket_allocatable_size = MEMGetAllocatableSizeForFrmHeapEx(bucket_heap_handle, 4);
   bucket_memory = MEMAllocFromFrmHeapEx(bucket_heap_handle, bucket_allocatable_size, 4);

   if(bucket_memory)
      bucket_heap = MEMCreateExpHeapEx(bucket_memory,
            bucket_allocatable_size, 0);
}
