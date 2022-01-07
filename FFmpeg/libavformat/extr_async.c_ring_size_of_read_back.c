
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int read_pos; } ;
typedef TYPE_1__ RingBuffer ;



__attribute__((used)) static int ring_size_of_read_back(RingBuffer *ring)
{
    return ring->read_pos;
}
