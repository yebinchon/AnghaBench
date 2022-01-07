
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int in_conns; TYPE_1__* srv; scalar_t__ tickat; int tickpos; } ;
struct TYPE_6__ {int conns; } ;
typedef TYPE_2__ Conn ;


 scalar_t__ conntickat (TYPE_2__*) ;
 int heapinsert (int *,TYPE_2__*) ;
 int heapremove (int *,int ) ;

void
connsched(Conn *c)
{
    if (c->in_conns) {
        heapremove(&c->srv->conns, c->tickpos);
        c->in_conns = 0;
    }
    c->tickat = conntickat(c);
    if (c->tickat) {
        heapinsert(&c->srv->conns, c);
        c->in_conns = 1;
    }
}
