
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ waitq_lock_state_t ;
typedef int wait_result_t ;
typedef int uint64_t ;
typedef scalar_t__ thread_t ;
struct waitq {int dummy; } ;
typedef int spl_t ;
typedef scalar_t__ kern_return_t ;
typedef int event64_t ;


 scalar_t__ KERN_NOT_WAITING ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ THREAD_NULL ;
 int WAITQ_SELECT_MAX_PRI ;
 scalar_t__ WAITQ_UNLOCK ;
 int assert (int) ;
 int maybe_adjust_thread_pri (scalar_t__,int,struct waitq*) ;
 int splx (int ) ;
 scalar_t__ thread_go (scalar_t__,int ) ;
 int thread_unlock (scalar_t__) ;
 int waitq_held (struct waitq*) ;
 scalar_t__ waitq_select_max_locked (struct waitq*,int ,int *,int *) ;
 scalar_t__ waitq_select_one_locked (struct waitq*,int ,int *,int,int *) ;
 int waitq_stats_count_fail (struct waitq*) ;
 int waitq_stats_count_wakeup (struct waitq*) ;
 int waitq_unlock (struct waitq*) ;

kern_return_t waitq_wakeup64_one_locked(struct waitq *waitq,
     event64_t wake_event,
     wait_result_t result,
     uint64_t *reserved_preposts,
     int priority,
     waitq_lock_state_t lock_state)
{
 thread_t thread;
 spl_t th_spl;

 assert(waitq_held(waitq));

 if (priority == WAITQ_SELECT_MAX_PRI) {
  thread = waitq_select_max_locked(waitq, wake_event,
                                   reserved_preposts,
                                   &th_spl);
 } else {
  thread = waitq_select_one_locked(waitq, wake_event,
                                   reserved_preposts,
                                   priority, &th_spl);
 }


 if (thread != THREAD_NULL)
  waitq_stats_count_wakeup(waitq);
 else
  waitq_stats_count_fail(waitq);

 if (lock_state == WAITQ_UNLOCK)
  waitq_unlock(waitq);

 if (thread != THREAD_NULL) {
  maybe_adjust_thread_pri(thread, priority, waitq);
  kern_return_t ret = thread_go(thread, result);
  assert(ret == KERN_SUCCESS);
  thread_unlock(thread);
  splx(th_spl);
  return ret;
 }

 return KERN_NOT_WAITING;
}
