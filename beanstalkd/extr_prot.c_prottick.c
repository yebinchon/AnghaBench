
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef scalar_t__ int64 ;
struct TYPE_19__ {scalar_t__ unpause_at; scalar_t__ pause; } ;
typedef TYPE_3__ Tube ;
struct TYPE_23__ {size_t len; TYPE_3__** items; } ;
struct TYPE_22__ {scalar_t__ tickat; scalar_t__ in_conns; } ;
struct TYPE_17__ {scalar_t__ deadline_at; } ;
struct TYPE_21__ {int heap_index; TYPE_2__* tube; TYPE_1__ r; } ;
struct TYPE_16__ {TYPE_6__** data; scalar_t__ len; } ;
struct TYPE_20__ {TYPE_10__ conns; } ;
struct TYPE_18__ {TYPE_10__ delay; } ;
typedef TYPE_4__ Server ;
typedef TYPE_5__ Job ;
typedef TYPE_6__ Conn ;


 int bury_job (TYPE_4__*,TYPE_5__*,int ) ;
 int conn_timeout (TYPE_6__*) ;
 int enqueue_job (TYPE_4__*,TYPE_5__*,int ,int ) ;
 int epollq_apply () ;
 int heapremove (TYPE_10__*,int ) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 scalar_t__ nanoseconds () ;
 int process_queue () ;
 TYPE_5__* soonest_delayed_job () ;
 TYPE_7__ tubes ;

int64
prottick(Server *s)
{
    Job *j;
    int64 now;
    Tube *t;
    int64 period = 0x34630B8A000LL;
    int64 d;

    now = nanoseconds();



    while ((j = soonest_delayed_job())) {
        d = j->r.deadline_at - now;
        if (d > 0) {
            period = min(period, d);
            break;
        }
        heapremove(&j->tube->delay, j->heap_index);
        int r = enqueue_job(s, j, 0, 0);
        if (r < 1)
            bury_job(s, j, 0);
    }



    size_t i;
    for (i = 0; i < tubes.len; i++) {
        t = tubes.items[i];
        d = t->unpause_at - now;
        if (t->pause && d <= 0) {
            t->pause = 0;
            process_queue();
        }
        else if (d > 0) {
            period = min(period, d);
        }
    }



    while (s->conns.len) {
        Conn *c = s->conns.data[0];
        d = c->tickat - now;
        if (d > 0) {
            period = min(period, d);
            break;
        }
        heapremove(&s->conns, 0);
        c->in_conns = 0;
        conn_timeout(c);
    }

    epollq_apply();

    return period;
}
