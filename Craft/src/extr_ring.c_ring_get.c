
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int start; int capacity; int * data; } ;
typedef int RingEntry ;
typedef TYPE_1__ Ring ;


 int memcpy (int *,int *,int) ;
 scalar_t__ ring_empty (TYPE_1__*) ;

int ring_get(Ring *ring, RingEntry *entry) {
    if (ring_empty(ring)) {
        return 0;
    }
    RingEntry *e = ring->data + ring->start;
    memcpy(entry, e, sizeof(RingEntry));
    ring->start = (ring->start + 1) % ring->capacity;
    return 1;
}
