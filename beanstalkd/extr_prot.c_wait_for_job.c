
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pending_timeout; int state; } ;
typedef TYPE_1__ Conn ;


 int STATE_WAIT ;
 int enqueue_waiting_conn (TYPE_1__*) ;
 int epollq_add (TYPE_1__*,char) ;

__attribute__((used)) static void
wait_for_job(Conn *c, int timeout)
{
    c->state = STATE_WAIT;
    enqueue_waiting_conn(c);


    c->pending_timeout = timeout;


    epollq_add(c, 'h');
}
