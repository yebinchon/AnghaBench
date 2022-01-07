
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MEMAllocFromExpHeapEx (int ,unsigned int,unsigned int) ;
 int mem1_heap ;

void * MEM1_alloc(unsigned int size, unsigned int align)
{
   if (align < 4)
      align = 4;
   return MEMAllocFromExpHeapEx(mem1_heap, size, align);
}
