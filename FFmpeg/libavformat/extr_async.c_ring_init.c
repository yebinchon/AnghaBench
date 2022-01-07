
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int read_back_capacity; int fifo; } ;
typedef TYPE_1__ RingBuffer ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_fifo_alloc (unsigned int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int ring_init(RingBuffer *ring, unsigned int capacity, int read_back_capacity)
{
    memset(ring, 0, sizeof(RingBuffer));
    ring->fifo = av_fifo_alloc(capacity + read_back_capacity);
    if (!ring->fifo)
        return AVERROR(ENOMEM);

    ring->read_back_capacity = read_back_capacity;
    return 0;
}
