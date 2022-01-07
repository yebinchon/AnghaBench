
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tqueue; } ;
typedef TYPE_1__ tqueue_st ;
typedef scalar_t__ lwpq_t ;
typedef int lwp_cntrl ;


 int __lwp_thread_dispatchenable () ;
 int * __lwp_threadqueue_dequeue (int *) ;
 int __lwp_tqueue_free (TYPE_1__*) ;
 TYPE_1__* __lwp_tqueue_open (scalar_t__) ;

void LWP_CloseQueue(lwpq_t thequeue)
{
 lwp_cntrl *thethread;
 tqueue_st *tq = (tqueue_st*)thequeue;

 tq = __lwp_tqueue_open(thequeue);
 if(!tq) return;

 do {
  thethread = __lwp_threadqueue_dequeue(&tq->tqueue);
 } while(thethread);
 __lwp_thread_dispatchenable();

 __lwp_tqueue_free(tq);
 return;
}
