
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEMFreeToExpHeap (int ,void*) ;
 int mem1_heap ;

void MEM1_free(void *ptr)
{
   if (ptr)
      MEMFreeToExpHeap(mem1_heap, ptr);
}
