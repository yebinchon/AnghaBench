
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIFO_REALLOC_MEM_SIZE ;
 int fifo_current_realloc_mem_size ;

void InitFifo()
{
 fifo_current_realloc_mem_size = FIFO_REALLOC_MEM_SIZE;
}
