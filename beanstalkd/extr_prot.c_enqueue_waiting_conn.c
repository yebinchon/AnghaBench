
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int waiting_ct; } ;
struct TYPE_10__ {int waiting_conns; TYPE_2__ stat; } ;
typedef TYPE_3__ Tube ;
struct TYPE_12__ {int waiting_ct; } ;
struct TYPE_8__ {size_t len; TYPE_3__** items; } ;
struct TYPE_11__ {TYPE_1__ watch; int type; } ;
typedef TYPE_4__ Conn ;


 int CONN_TYPE_WAITING ;
 TYPE_6__ global_stat ;
 int ms_append (int *,TYPE_4__*) ;

__attribute__((used)) static void
enqueue_waiting_conn(Conn *c)
{
    c->type |= CONN_TYPE_WAITING;
    global_stat.waiting_ct++;
    size_t i;
    for (i = 0; i < c->watch.len; i++) {
        Tube *t = c->watch.items[i];
        t->stat.waiting_ct++;
        ms_append(&t->waiting_conns, c);
    }
}
