
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 scalar_t__ FIFO_REALLOC_MEM_SIZE ;
 scalar_t__ fifo_current_realloc_mem_size ;

void SetFifoCurrentReallocMemSize(UINT size)
{
 if (size == 0)
 {
  size = FIFO_REALLOC_MEM_SIZE;
 }

 fifo_current_realloc_mem_size = size;
}
