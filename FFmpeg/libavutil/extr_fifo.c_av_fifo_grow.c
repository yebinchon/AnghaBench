
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int end; unsigned int buffer; } ;
typedef TYPE_1__ AVFifoBuffer ;


 int AVERROR (int ) ;
 int EINVAL ;
 int FFMAX (unsigned int,int) ;
 int av_fifo_realloc2 (TYPE_1__*,int ) ;
 scalar_t__ av_fifo_size (TYPE_1__*) ;

int av_fifo_grow(AVFifoBuffer *f, unsigned int size)
{
    unsigned int old_size = f->end - f->buffer;
    if(size + (unsigned)av_fifo_size(f) < size)
        return AVERROR(EINVAL);

    size += av_fifo_size(f);

    if (old_size < size)
        return av_fifo_realloc2(f, FFMAX(size, 2*old_size));
    return 0;
}
