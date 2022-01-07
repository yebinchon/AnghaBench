
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int read_pos; } ;
typedef TYPE_1__ RingBuffer ;


 int av_assert2 (int) ;
 int ring_size (TYPE_1__*) ;
 int ring_size_of_read_back (TYPE_1__*) ;

__attribute__((used)) static int ring_drain(RingBuffer *ring, int offset)
{
    av_assert2(offset >= -ring_size_of_read_back(ring));
    av_assert2(offset <= ring_size(ring));
    ring->read_pos += offset;
    return 0;
}
