
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_8__ {TYPE_1__ r; } ;
struct TYPE_7__ {int state; scalar_t__ reply_sent; TYPE_3__* out_job; } ;
typedef TYPE_2__ Conn ;


 scalar_t__ Copy ;
 int STATE_WANT_COMMAND ;
 int epollq_add (TYPE_2__*,char) ;
 int job_free (TYPE_3__*) ;

__attribute__((used)) static void
conn_want_command(Conn *c)
{
    epollq_add(c, 'r');


    if (c->out_job && c->out_job->r.state == Copy)
        job_free(c->out_job);
    c->out_job = ((void*)0);

    c->reply_sent = 0;
    c->state = STATE_WANT_COMMAND;
}
