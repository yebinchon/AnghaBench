
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;
typedef int thread_t ;
struct waitq {int dummy; } ;
typedef int spl_t ;
typedef scalar_t__ kern_return_t ;
typedef int event64_t ;


 scalar_t__ KERN_NOT_WAITING ;
 scalar_t__ KERN_SUCCESS ;
 int assert (int) ;
 int panic (char*,struct waitq*) ;
 int splsched () ;
 int splx (int ) ;
 scalar_t__ thread_go (int ,int ) ;
 int thread_unlock (int ) ;
 scalar_t__ waitq_irq_safe (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 scalar_t__ waitq_select_thread_locked (struct waitq*,int ,int ,int *) ;
 int waitq_stats_count_fail (struct waitq*) ;
 int waitq_stats_count_wakeup (struct waitq*) ;
 int waitq_unlock (struct waitq*) ;
 int waitq_valid (struct waitq*) ;

kern_return_t waitq_wakeup64_thread(struct waitq *waitq,
        event64_t wake_event,
        thread_t thread,
        wait_result_t result)
{
 kern_return_t ret;
 spl_t s, th_spl;

 if (!waitq_valid(waitq))
  panic("Invalid waitq: %p", waitq);

 if (waitq_irq_safe(waitq))
  s = splsched();
 waitq_lock(waitq);

 ret = waitq_select_thread_locked(waitq, wake_event, thread, &th_spl);


 waitq_unlock(waitq);

 if (ret == KERN_SUCCESS) {
  ret = thread_go(thread, result);
  assert(ret == KERN_SUCCESS);
  thread_unlock(thread);
  splx(th_spl);
  waitq_stats_count_wakeup(waitq);
 } else {
  ret = KERN_NOT_WAITING;
  waitq_stats_count_fail(waitq);
 }

 if (waitq_irq_safe(waitq))
  splx(s);

 return ret;
}
