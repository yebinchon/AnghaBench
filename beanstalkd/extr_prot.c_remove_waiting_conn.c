
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int waiting_ct; } ;
struct TYPE_11__ {int waiting_conns; TYPE_2__ stat; } ;
typedef TYPE_3__ Tube ;
struct TYPE_13__ {int waiting_ct; } ;
struct TYPE_9__ {size_t len; TYPE_3__** items; } ;
struct TYPE_12__ {TYPE_1__ watch; int type; } ;
typedef TYPE_4__ Conn ;


 int CONN_TYPE_WAITING ;
 int conn_waiting (TYPE_4__*) ;
 TYPE_7__ global_stat ;
 int ms_remove (int *,TYPE_4__*) ;

void
remove_waiting_conn(Conn *c)
{
    if (!conn_waiting(c))
        return;

    c->type &= ~CONN_TYPE_WAITING;
    global_stat.waiting_ct--;
    size_t i;
    for (i = 0; i < c->watch.len; i++) {
        Tube *t = c->watch.items[i];
        t->stat.waiting_ct--;
        ms_remove(&t->waiting_conns, c);
    }
}
