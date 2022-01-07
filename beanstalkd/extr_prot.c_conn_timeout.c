
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ pending_timeout; int srv; TYPE_2__* out_job; } ;
struct TYPE_17__ {scalar_t__ deadline_at; int timeout_ct; } ;
struct TYPE_18__ {TYPE_1__ r; } ;
typedef TYPE_2__ Job ;
typedef TYPE_3__ Conn ;


 int MSG_DEADLINE_SOON ;
 int MSG_TIMED_OUT ;
 int bury_job (int ,TYPE_2__*,int ) ;
 scalar_t__ conn_waiting (TYPE_3__*) ;
 scalar_t__ conndeadlinesoon (TYPE_3__*) ;
 int connsched (TYPE_3__*) ;
 TYPE_2__* connsoonestjob (TYPE_3__*) ;
 int enqueue_job (int ,int ,int ,int ) ;
 TYPE_2__* job_copy (TYPE_2__*) ;
 scalar_t__ nanoseconds () ;
 int remove_this_reserved_job (TYPE_3__*,TYPE_2__*) ;
 int remove_waiting_conn (TYPE_3__*) ;
 int reply_msg (TYPE_3__*,int ) ;
 int timeout_ct ;

__attribute__((used)) static void
conn_timeout(Conn *c)
{
    int should_timeout = 0;
    Job *j;


    if (conn_waiting(c) && conndeadlinesoon(c))
        should_timeout = 1;



    while ((j = connsoonestjob(c))) {
        if (j->r.deadline_at >= nanoseconds())
            break;





        if (j == c->out_job) {
            c->out_job = job_copy(c->out_job);
        }

        timeout_ct++;
        j->r.timeout_ct++;
        int r = enqueue_job(c->srv, remove_this_reserved_job(c, j), 0, 0);
        if (r < 1)
            bury_job(c->srv, j, 0);
        connsched(c);
    }

    if (should_timeout) {
        remove_waiting_conn(c);
        reply_msg(c, MSG_DEADLINE_SOON);
    } else if (conn_waiting(c) && c->pending_timeout >= 0) {
        c->pending_timeout = -1;
        remove_waiting_conn(c);
        reply_msg(c, MSG_TIMED_OUT);
    }
}
