
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;
typedef int uint64_t ;
typedef scalar_t__ thread_t ;
struct waitq {int dummy; } ;
typedef int spl_t ;
typedef int event64_t ;


 scalar_t__ THREAD_NULL ;
 int WAITQ_KEEP_LOCKED ;
 int WAITQ_UNLOCK ;
 int panic (char*,struct waitq*) ;
 int splsched () ;
 int splx (int ) ;
 int thread_reference (scalar_t__) ;
 int thread_unlock (scalar_t__) ;
 scalar_t__ waitq_irq_safe (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 int waitq_prepost_release_reserve (int ) ;
 int waitq_prepost_reserve (struct waitq*,int ,int ) ;
 int waitq_valid (struct waitq*) ;
 scalar_t__ waitq_wakeup64_identify_locked (struct waitq*,int ,int ,int *,int *,int,int ) ;

thread_t
waitq_wakeup64_identify(struct waitq *waitq,
                        event64_t wake_event,
                        wait_result_t result,
                        int priority)
{
 uint64_t reserved_preposts = 0;
 spl_t thread_spl = 0;
 thread_t thread;
 spl_t spl;

 if (!waitq_valid(waitq))
  panic("Invalid waitq: %p", waitq);

 if (!waitq_irq_safe(waitq)) {

  reserved_preposts = waitq_prepost_reserve(waitq, 0, WAITQ_KEEP_LOCKED);
 } else {
  spl = splsched();
  waitq_lock(waitq);
 }

 thread = waitq_wakeup64_identify_locked(waitq, wake_event, result,
                                         &thread_spl, &reserved_preposts,
                                         priority, WAITQ_UNLOCK);


 if (thread != THREAD_NULL) {
  thread_reference(thread);
  thread_unlock(thread);
  splx(thread_spl);
 }

 if (waitq_irq_safe(waitq))
   splx(spl);


 waitq_prepost_release_reserve(reserved_preposts);


 return thread;
}
