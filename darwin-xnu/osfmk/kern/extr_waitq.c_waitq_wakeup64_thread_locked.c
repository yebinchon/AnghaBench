
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ waitq_lock_state_t ;
typedef int wait_result_t ;
typedef int thread_t ;
struct waitq {int dummy; } ;
typedef int spl_t ;
typedef scalar_t__ kern_return_t ;
typedef int event64_t ;


 scalar_t__ KERN_NOT_WAITING ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ WAITQ_UNLOCK ;
 int assert (int) ;
 int assert_thread_magic (int ) ;
 int splx (int ) ;
 scalar_t__ thread_go (int ,int ) ;
 int thread_unlock (int ) ;
 int waitq_held (struct waitq*) ;
 scalar_t__ waitq_select_thread_locked (struct waitq*,int ,int ,int *) ;
 int waitq_stats_count_fail (struct waitq*) ;
 int waitq_stats_count_wakeup (struct waitq*) ;
 int waitq_unlock (struct waitq*) ;

kern_return_t waitq_wakeup64_thread_locked(struct waitq *waitq,
        event64_t wake_event,
        thread_t thread,
        wait_result_t result,
        waitq_lock_state_t lock_state)
{
 kern_return_t ret;
 spl_t th_spl;

 assert(waitq_held(waitq));
 assert_thread_magic(thread);





 ret = waitq_select_thread_locked(waitq, wake_event, thread, &th_spl);

 if (ret == KERN_SUCCESS)
  waitq_stats_count_wakeup(waitq);
 else
  waitq_stats_count_fail(waitq);

 if (lock_state == WAITQ_UNLOCK)
  waitq_unlock(waitq);

 if (ret != KERN_SUCCESS)
  return KERN_NOT_WAITING;

 ret = thread_go(thread, result);
 assert(ret == KERN_SUCCESS);
 thread_unlock(thread);
 splx(th_spl);

 return ret;
}
