
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ read_pos; int fifo; } ;
typedef TYPE_1__ RingBuffer ;


 int av_fifo_reset (int ) ;

__attribute__((used)) static void ring_reset(RingBuffer *ring)
{
    av_fifo_reset(ring->fifo);
    ring->read_pos = 0;
}
