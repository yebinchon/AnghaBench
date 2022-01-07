
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* task_pend_token_t ;
typedef int spl_t ;
typedef scalar_t__ sched_mode_t ;
typedef int kern_return_t ;
typedef scalar_t__ integer_t ;
struct TYPE_9__ {int tpt_update_thread_sfi; } ;
struct TYPE_8__ {scalar_t__ sched_mode; scalar_t__ saved_mode; scalar_t__ max_priority; scalar_t__ task_priority; scalar_t__ importance; scalar_t__ policy_reset; } ;


 scalar_t__ BASEPRI_DEFAULT ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ MINPRI ;
 scalar_t__ MINPRI_KERNEL ;
 scalar_t__ MINPRI_RESERVED ;
 scalar_t__ TH_MODE_REALTIME ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (TYPE_1__*) ;
 int thread_set_user_sched_mode_and_recompute_pri (TYPE_1__*,scalar_t__) ;
 int thread_unlock (TYPE_1__*) ;

__attribute__((used)) static kern_return_t
thread_set_mode_and_absolute_pri_internal(thread_t thread,
                                          sched_mode_t mode,
                                          integer_t priority,
                                          task_pend_token_t pend_token)
{
 kern_return_t kr = KERN_SUCCESS;

 spl_t s = splsched();
 thread_lock(thread);


 if ((thread->sched_mode == TH_MODE_REALTIME) ||
     (thread->saved_mode == TH_MODE_REALTIME)) {
  kr = KERN_FAILURE;
  goto unlock;
 }

 if (thread->policy_reset) {
  kr = KERN_SUCCESS;
  goto unlock;
 }

 sched_mode_t old_mode = thread->sched_mode;
 if (priority >= thread->max_priority)
  priority = thread->max_priority - thread->task_priority;
 else if (priority >= MINPRI_KERNEL)
  priority -= MINPRI_KERNEL;
 else if (priority >= MINPRI_RESERVED)
  priority -= MINPRI_RESERVED;
 else
  priority -= BASEPRI_DEFAULT;

 priority += thread->task_priority;

 if (priority > thread->max_priority)
  priority = thread->max_priority;
 else if (priority < MINPRI)
  priority = MINPRI;

 thread->importance = priority - thread->task_priority;

 thread_set_user_sched_mode_and_recompute_pri(thread, mode);

 if (mode != old_mode)
  pend_token->tpt_update_thread_sfi = 1;

unlock:
 thread_unlock(thread);
 splx(s);

 return kr;
}
