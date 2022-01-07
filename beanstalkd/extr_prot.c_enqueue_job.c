
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_16__ {int urgent_ct; } ;
struct TYPE_11__ {scalar_t__ pri; int state; scalar_t__ deadline_at; } ;
struct TYPE_15__ {TYPE_3__* tube; TYPE_1__ r; int * reserver; } ;
struct TYPE_14__ {int wal; } ;
struct TYPE_12__ {int urgent_ct; } ;
struct TYPE_13__ {TYPE_2__ stat; int ready; int delay; } ;
typedef TYPE_4__ Server ;
typedef TYPE_5__ Job ;


 int Delayed ;
 int Ready ;
 scalar_t__ URGENT_THRESHOLD ;
 TYPE_8__ global_stat ;
 int heapinsert (int *,TYPE_5__*) ;
 scalar_t__ nanoseconds () ;
 int process_queue () ;
 int ready_ct ;
 int walmaint (int *) ;
 int walwrite (int *,TYPE_5__*) ;

__attribute__((used)) static int
enqueue_job(Server *s, Job *j, int64 delay, char update_store)
{
    int r;

    j->reserver = ((void*)0);
    if (delay) {
        j->r.deadline_at = nanoseconds() + delay;
        r = heapinsert(&j->tube->delay, j);
        if (!r)
            return 0;
        j->r.state = Delayed;
    } else {
        r = heapinsert(&j->tube->ready, j);
        if (!r)
            return 0;
        j->r.state = Ready;
        ready_ct++;
        if (j->r.pri < URGENT_THRESHOLD) {
            global_stat.urgent_ct++;
            j->tube->stat.urgent_ct++;
        }
    }

    if (update_store) {
        if (!walwrite(&s->wal, j)) {
            return 0;
        }
        walmaint(&s->wal);
    }



    process_queue();
    return 1;
}
