
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ start; scalar_t__ end; } ;
typedef TYPE_1__ Ring ;



int ring_empty(Ring *ring) {
    return ring->start == ring->end;
}
