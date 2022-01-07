
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int capacity; int * data; scalar_t__ end; scalar_t__ start; } ;
typedef int RingEntry ;
typedef TYPE_1__ Ring ;


 scalar_t__ calloc (int,int) ;

void ring_alloc(Ring *ring, int capacity) {
    ring->capacity = capacity;
    ring->start = 0;
    ring->end = 0;
    ring->data = (RingEntry *)calloc(capacity, sizeof(RingEntry));
}
