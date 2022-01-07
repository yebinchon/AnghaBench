
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_13__ {int reserved_ct; int urgent_ct; } ;
struct TYPE_9__ {scalar_t__ pri; } ;
struct TYPE_12__ {TYPE_3__* tube; TYPE_1__ r; int heap_index; } ;
struct TYPE_10__ {int urgent_ct; } ;
struct TYPE_11__ {int waiting_conns; TYPE_2__ stat; int ready; } ;
typedef TYPE_4__ Job ;
typedef int Conn ;


 int MSG_RESERVED ;
 scalar_t__ URGENT_THRESHOLD ;
 int conn_reserve_job (int *,TYPE_4__*) ;
 TYPE_7__ global_stat ;
 int heapremove (int *,int ) ;
 int * ms_take (int *) ;
 int nanoseconds () ;
 TYPE_4__* next_awaited_job (int ) ;
 int ready_ct ;
 int remove_waiting_conn (int *) ;
 int reply_job (int *,TYPE_4__*,int ) ;
 int twarnx (char*) ;

__attribute__((used)) static void
process_queue()
{
    Job *j = ((void*)0);
    int64 now = nanoseconds();

    while ((j = next_awaited_job(now))) {
        heapremove(&j->tube->ready, j->heap_index);
        ready_ct--;
        if (j->r.pri < URGENT_THRESHOLD) {
            global_stat.urgent_ct--;
            j->tube->stat.urgent_ct--;
        }

        Conn *c = ms_take(&j->tube->waiting_conns);
        if (c == ((void*)0)) {
            twarnx("waiting_conns is empty");
            continue;
        }
        global_stat.reserved_ct++;

        remove_waiting_conn(c);
        conn_reserve_job(c, j);
        reply_job(c, j, MSG_RESERVED);
    }
}
