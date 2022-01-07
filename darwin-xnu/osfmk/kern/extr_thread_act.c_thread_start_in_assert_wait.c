
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ wait_result_t ;
typedef int wait_interrupt_t ;
typedef TYPE_1__* thread_t ;
struct waitq {int dummy; } ;
typedef int spl_t ;
typedef int event_t ;
struct TYPE_6__ {int state; scalar_t__ started; } ;


 int CAST_EVENT64_T (int ) ;
 scalar_t__ THREAD_WAITING ;
 int TH_UNINT ;
 int TH_WAIT ;
 int TIMEOUT_NO_LEEWAY ;
 int TIMEOUT_URGENCY_SYS_NORMAL ;
 int TIMEOUT_WAIT_FOREVER ;
 scalar_t__ TRUE ;
 int assert (int) ;
 struct waitq* assert_wait_queue (int ) ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;
 scalar_t__ waitq_assert_wait64_locked (struct waitq*,int ,int ,int ,int ,int ,TYPE_1__*) ;
 int waitq_lock (struct waitq*) ;
 int waitq_unlock (struct waitq*) ;

void
thread_start_in_assert_wait(
 thread_t thread,
 event_t event,
 wait_interrupt_t interruptible)
{
 struct waitq *waitq = assert_wait_queue(event);
 wait_result_t wait_result;
 spl_t spl;

 spl = splsched();
 waitq_lock(waitq);


 thread_lock(thread);
 assert(!thread->started);
 assert((thread->state & (TH_WAIT | TH_UNINT)) == (TH_WAIT | TH_UNINT));
 thread->state &= ~(TH_WAIT | TH_UNINT);
 thread_unlock(thread);


 wait_result = waitq_assert_wait64_locked(waitq, CAST_EVENT64_T(event),
                                  interruptible,
                                  TIMEOUT_URGENCY_SYS_NORMAL,
                                  TIMEOUT_WAIT_FOREVER,
                                  TIMEOUT_NO_LEEWAY,
                                  thread);
 assert (wait_result == THREAD_WAITING);


 thread_lock(thread);
 thread->started = TRUE;
 thread_unlock(thread);

 waitq_unlock(waitq);
 splx(spl);
}
