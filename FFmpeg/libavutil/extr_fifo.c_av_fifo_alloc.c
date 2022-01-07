
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFifoBuffer ;


 void* av_malloc (unsigned int) ;
 int * fifo_alloc_common (void*,unsigned int) ;

AVFifoBuffer *av_fifo_alloc(unsigned int size)
{
    void *buffer = av_malloc(size);
    return fifo_alloc_common(buffer, size);
}
