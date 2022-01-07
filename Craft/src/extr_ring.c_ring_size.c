
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ end; scalar_t__ start; int capacity; } ;
typedef TYPE_1__ Ring ;



int ring_size(Ring *ring) {
    if (ring->end >= ring->start) {
        return ring->end - ring->start;
    }
    else {
        return ring->capacity - (ring->start - ring->end);
    }
}
