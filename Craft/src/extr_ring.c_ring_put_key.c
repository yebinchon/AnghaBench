
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p; int q; int key; int type; } ;
typedef TYPE_1__ RingEntry ;
typedef int Ring ;


 int KEY ;
 int ring_put (int *,TYPE_1__*) ;

void ring_put_key(Ring *ring, int p, int q, int key) {
    RingEntry entry;
    entry.type = KEY;
    entry.p = p;
    entry.q = q;
    entry.key = key;
    ring_put(ring, &entry);
}
