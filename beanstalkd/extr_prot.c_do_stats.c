
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int (* fmt_fn ) (int *,int,void*) ;
struct TYPE_7__ {int body_size; int state; } ;
struct TYPE_9__ {TYPE_1__ r; int * body; } ;
struct TYPE_8__ {scalar_t__ out_job_sent; TYPE_6__* out_job; } ;
typedef TYPE_2__ Conn ;


 int Copy ;
 int MSG_INTERNAL_ERROR ;
 int MSG_OUT_OF_MEMORY ;
 int STATE_SEND_JOB ;
 TYPE_6__* allocate_job (int) ;
 int reply_line (TYPE_2__*,int ,char*,int) ;
 int reply_serr (TYPE_2__*,int ) ;

__attribute__((used)) static void
do_stats(Conn *c, fmt_fn fmt, void *data)
{
    int r, stats_len;


    stats_len = fmt(((void*)0), 0, data) + 16;

    c->out_job = allocate_job(stats_len);
    if (!c->out_job) {
        reply_serr(c, MSG_OUT_OF_MEMORY);
        return;
    }


    c->out_job->r.state = Copy;


    r = fmt(c->out_job->body, stats_len, data);

    c->out_job->r.body_size = r;
    if (r > stats_len) {
        reply_serr(c, MSG_INTERNAL_ERROR);
        return;
    }

    c->out_job_sent = 0;
    reply_line(c, STATE_SEND_JOB, "OK %d\r\n", r - 2);
}
