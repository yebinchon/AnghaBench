
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ RingEntry ;
typedef int Ring ;


 int EXIT ;
 int ring_put (int *,TYPE_1__*) ;

void ring_put_exit(Ring *ring) {
    RingEntry entry;
    entry.type = EXIT;
    ring_put(ring, &entry);
}
