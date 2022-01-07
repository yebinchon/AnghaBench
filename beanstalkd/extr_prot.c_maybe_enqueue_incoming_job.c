
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ in_job_read; int state; TYPE_2__* in_job; } ;
struct TYPE_6__ {scalar_t__ body_size; } ;
struct TYPE_7__ {TYPE_1__ r; } ;
typedef TYPE_2__ Job ;
typedef TYPE_3__ Conn ;


 int STATE_WANT_DATA ;
 int enqueue_incoming_job (TYPE_3__*) ;

__attribute__((used)) static void
maybe_enqueue_incoming_job(Conn *c)
{
    Job *j = c->in_job;


    if (c->in_job_read == j->r.body_size) {
        enqueue_incoming_job(c);
        return;
    }


    c->state = STATE_WANT_DATA;
}
