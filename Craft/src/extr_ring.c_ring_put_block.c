
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p; int q; int x; int y; int z; int w; int type; } ;
typedef TYPE_1__ RingEntry ;
typedef int Ring ;


 int BLOCK ;
 int ring_put (int *,TYPE_1__*) ;

void ring_put_block(Ring *ring, int p, int q, int x, int y, int z, int w) {
    RingEntry entry;
    entry.type = BLOCK;
    entry.p = p;
    entry.q = q;
    entry.x = x;
    entry.y = y;
    entry.z = z;
    entry.w = w;
    ring_put(ring, &entry);
}
