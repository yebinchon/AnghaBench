#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  MEMHeapHandle ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,unsigned int,int) ; 
 void* FUNC1 (void*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEM_BASE_HEAP_FG ; 
 int /*<<< orphan*/  MEM_BASE_HEAP_MEM1 ; 
 void* bucket_heap ; 
 void* mem1_heap ; 

void FUNC4(void)
{
   unsigned int bucket_allocatable_size;
   MEMHeapHandle bucket_heap_handle;
   void *bucket_memory                = NULL;
   MEMHeapHandle mem1_heap_handle     = FUNC3(MEM_BASE_HEAP_MEM1);
   unsigned int mem1_allocatable_size = FUNC2(mem1_heap_handle, 4);
   void *mem1_memory                  = FUNC0(mem1_heap_handle, mem1_allocatable_size, 4);

   if(mem1_memory)
      mem1_heap = FUNC1(mem1_memory,
            mem1_allocatable_size, 0);

   bucket_heap_handle      = FUNC3(MEM_BASE_HEAP_FG);
   bucket_allocatable_size = FUNC2(bucket_heap_handle, 4);
   bucket_memory           = FUNC0(bucket_heap_handle, bucket_allocatable_size, 4);

   if(bucket_memory)
      bucket_heap = FUNC1(bucket_memory,
            bucket_allocatable_size, 0);
}