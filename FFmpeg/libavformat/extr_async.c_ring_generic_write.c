
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fifo; } ;
typedef TYPE_1__ RingBuffer ;


 int av_assert2 (int) ;
 int av_fifo_generic_write (int ,void*,int,int (*) (void*,void*,int)) ;
 int ring_space (TYPE_1__*) ;

__attribute__((used)) static int ring_generic_write(RingBuffer *ring, void *src, int size, int (*func)(void*, void*, int))
{
    av_assert2(size <= ring_space(ring));
    return av_fifo_generic_write(ring->fifo, src, size, func);
}
