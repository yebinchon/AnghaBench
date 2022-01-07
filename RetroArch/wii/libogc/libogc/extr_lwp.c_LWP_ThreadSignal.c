
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tqueue; } ;
typedef TYPE_1__ tqueue_st ;
typedef int lwpq_t ;


 int __lwp_thread_dispatchenable () ;
 int __lwp_threadqueue_dequeue (int *) ;
 TYPE_1__* __lwp_tqueue_open (int ) ;

void LWP_ThreadSignal(lwpq_t thequeue)
{
 tqueue_st *tq;

 tq = __lwp_tqueue_open(thequeue);
 if(!tq) return;

 __lwp_threadqueue_dequeue(&tq->tqueue);
 __lwp_thread_dispatchenable();
}
