
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int wait_result_t ;
typedef TYPE_1__* thread_t ;
typedef int kern_return_t ;
struct TYPE_6__ {scalar_t__ at_safe_point; scalar_t__ wait_event; int state; int * thread_wakeup_bt; int * waitq; } ;


 scalar_t__ FALSE ;
 int KERN_SUCCESS ;
 scalar_t__ NO_EVENT64 ;
 int SCHED_PREEMPT ;
 int SCHED_TAILQ ;
 int TH_TERMINATE ;
 int TH_TERMINATE2 ;
 int TH_WAIT ;
 int assert (int) ;
 int assert_thread_magic (TYPE_1__*) ;
 int backtrace (int *,int) ;
 int thread_setrun (TYPE_1__*,int) ;
 scalar_t__ thread_unblock (TYPE_1__*,int ) ;

kern_return_t
thread_go(
          thread_t thread,
          wait_result_t wresult)
{
 assert_thread_magic(thread);

 assert(thread->at_safe_point == FALSE);
 assert(thread->wait_event == NO_EVENT64);
 assert(thread->waitq == ((void*)0));

 assert(!(thread->state & (TH_TERMINATE|TH_TERMINATE2)));
 assert(thread->state & TH_WAIT);


 if (thread_unblock(thread, wresult)) {




  thread_setrun(thread, SCHED_PREEMPT | SCHED_TAILQ);
 }

 return (KERN_SUCCESS);
}
