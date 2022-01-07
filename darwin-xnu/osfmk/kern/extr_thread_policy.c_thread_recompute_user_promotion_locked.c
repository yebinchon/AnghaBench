
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int thread_qos_t ;
struct task_pend_token {int tpt_force_recompute_pri; } ;
typedef int boolean_t ;
struct TYPE_10__ {int base_pri; int user_promotion_basepri; } ;


 int DBG_FUNC_NONE ;
 int FALSE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int,int,int ,int ) ;
 int MAXPRI_THROTTLE ;
 int MAXPRI_USER ;
 int MIN (int ,int ) ;
 int TASK_POLICY_ATTRIBUTE ;
 int TASK_POLICY_QOS_PROMOTE ;
 int THREAD_QOS_UNSPECIFIED ;
 int THREAD_USER_PROMOTION_CHANGE ;
 int TRUE ;
 int TURNSTILE_CODE (int ,int ) ;
 int TURNSTILE_PRIORITY_OPERATIONS ;
 int proc_set_thread_policy_spinlocked (TYPE_1__*,int ,int ,int ,int ,struct task_pend_token*) ;
 int thread_get_inheritor_turnstile_priority (TYPE_1__*) ;
 scalar_t__ thread_get_waiting_turnstile (TYPE_1__*) ;
 int thread_lock (TYPE_1__*) ;
 int thread_policy_update_complete_unlocked (TYPE_1__*,struct task_pend_token*) ;
 int thread_tid (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;
 int thread_user_promotion_qos_for_pri (int) ;

boolean_t
thread_recompute_user_promotion_locked(thread_t thread)
{
 boolean_t needs_update = FALSE;
 struct task_pend_token pend_token = {};
 int user_promotion_basepri = MIN(thread_get_inheritor_turnstile_priority(thread), MAXPRI_USER);
 int old_base_pri = thread->base_pri;
 thread_qos_t qos_promotion;


 if (thread->user_promotion_basepri == user_promotion_basepri) {
  return needs_update;
 } else {
  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   (TURNSTILE_CODE(TURNSTILE_PRIORITY_OPERATIONS, (THREAD_USER_PROMOTION_CHANGE))) | DBG_FUNC_NONE,
   thread_tid(thread),
   user_promotion_basepri,
   thread->user_promotion_basepri,
   0, 0);
 }


 thread->user_promotion_basepri = user_promotion_basepri;
 pend_token.tpt_force_recompute_pri = 1;

 if (user_promotion_basepri <= MAXPRI_THROTTLE) {
  qos_promotion = THREAD_QOS_UNSPECIFIED;
 } else {
  qos_promotion = thread_user_promotion_qos_for_pri(user_promotion_basepri);
 }

 proc_set_thread_policy_spinlocked(thread, TASK_POLICY_ATTRIBUTE,
   TASK_POLICY_QOS_PROMOTE, qos_promotion, 0, &pend_token);

 if (thread_get_waiting_turnstile(thread) &&
     thread->base_pri != old_base_pri) {
  needs_update = TRUE;
 }

 thread_unlock(thread);

 thread_policy_update_complete_unlocked(thread, &pend_token);

 thread_lock(thread);

 return needs_update;
}
