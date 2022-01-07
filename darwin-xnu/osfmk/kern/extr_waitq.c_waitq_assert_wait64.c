
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;
typedef int wait_interrupt_t ;
typedef int uint64_t ;
typedef int thread_t ;
struct waitq {int dummy; } ;
typedef int spl_t ;
typedef int event64_t ;


 int TIMEOUT_NO_LEEWAY ;
 int TIMEOUT_URGENCY_SYS_NORMAL ;
 int current_thread () ;
 int panic (char*,struct waitq*) ;
 int splsched () ;
 int splx (int ) ;
 int waitq_assert_wait64_locked (struct waitq*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ waitq_irq_safe (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 int waitq_unlock (struct waitq*) ;
 int waitq_valid (struct waitq*) ;

wait_result_t waitq_assert_wait64(struct waitq *waitq,
      event64_t wait_event,
      wait_interrupt_t interruptible,
                  uint64_t deadline)
{
 thread_t thread = current_thread();
 wait_result_t ret;
 spl_t s;

 if (!waitq_valid(waitq))
  panic("Invalid waitq: %p", waitq);

 if (waitq_irq_safe(waitq))
  s = splsched();

 waitq_lock(waitq);
 ret = waitq_assert_wait64_locked(waitq, wait_event, interruptible,
      TIMEOUT_URGENCY_SYS_NORMAL,
      deadline, TIMEOUT_NO_LEEWAY, thread);
 waitq_unlock(waitq);

 if (waitq_irq_safe(waitq))
  splx(s);

 return ret;
}
