
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rptr; scalar_t__ end; scalar_t__ buffer; int rndx; } ;
typedef TYPE_1__ AVFifoBuffer ;


 int av_assert2 (int) ;
 int av_fifo_size (TYPE_1__*) ;

void av_fifo_drain(AVFifoBuffer *f, int size)
{
    av_assert2(av_fifo_size(f) >= size);
    f->rptr += size;
    if (f->rptr >= f->end)
        f->rptr -= f->end - f->buffer;
    f->rndx += size;
}
