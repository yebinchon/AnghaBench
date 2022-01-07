
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int capacity; int data; int end; int start; } ;
typedef int RingEntry ;
typedef TYPE_1__ Ring ;


 int free (int ) ;
 int ring_alloc (TYPE_1__*,int) ;
 scalar_t__ ring_get (TYPE_1__*,int *) ;
 int ring_put (TYPE_1__*,int *) ;

void ring_grow(Ring *ring) {
    Ring new_ring;
    RingEntry entry;
    ring_alloc(&new_ring, ring->capacity * 2);
    while (ring_get(ring, &entry)) {
        ring_put(&new_ring, &entry);
    }
    free(ring->data);
    ring->capacity = new_ring.capacity;
    ring->start = new_ring.start;
    ring->end = new_ring.end;
    ring->data = new_ring.data;
}
