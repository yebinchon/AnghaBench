
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEMFreeToExpHeap (int ,void*) ;
 int bucket_heap ;

void MEMBucket_free(void *ptr)
{
   if (ptr)
      MEMFreeToExpHeap(bucket_heap, ptr);
}
