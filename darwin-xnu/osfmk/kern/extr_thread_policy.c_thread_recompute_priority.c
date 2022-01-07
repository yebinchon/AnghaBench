
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
typedef int integer_t ;
struct TYPE_8__ {int* qos_pri; } ;
struct TYPE_6__ {int thep_qos; int thep_qos_ui_is_urgent; int thep_qos_relprio; scalar_t__ thep_terminated; } ;
struct TYPE_7__ {scalar_t__ sched_mode; int importance; int task_priority; int max_priority; scalar_t__ saved_mode; int sched_flags; TYPE_1__ effective_policy; int user_promotion_basepri; scalar_t__ policy_reset; } ;


 int BASEPRI_DEFAULT ;
 int BASEPRI_RTQUEUES ;
 int DEPRESSPRI ;
 int MAX (int,int ) ;
 int MAXPRI ;
 int MAXPRI_THROTTLE ;
 int MINPRI ;
 int THREAD_QOS_LAST ;
 int THREAD_QOS_MIN_TIER_IMPORTANCE ;
 int THREAD_QOS_UNSPECIFIED ;
 int THREAD_QOS_USER_INTERACTIVE ;
 scalar_t__ TH_MODE_REALTIME ;
 int TH_SFLAG_FAILSAFE ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int sched_set_thread_base_priority (TYPE_2__*,int) ;
 TYPE_4__ thread_qos_policy_params ;
 int thread_qos_scaled_relative_priority (int,int) ;

void
thread_recompute_priority(
 thread_t thread)
{
 integer_t priority;

 if (thread->policy_reset)
  return;

 if (thread->sched_mode == TH_MODE_REALTIME) {
  sched_set_thread_base_priority(thread, BASEPRI_RTQUEUES);
  return;
 } else if (thread->effective_policy.thep_qos != THREAD_QOS_UNSPECIFIED) {
  int qos = thread->effective_policy.thep_qos;
  int qos_ui_is_urgent = thread->effective_policy.thep_qos_ui_is_urgent;
  int qos_relprio = -(thread->effective_policy.thep_qos_relprio);
  int qos_scaled_relprio;

  assert(qos >= 0 && qos < THREAD_QOS_LAST);
  assert(qos_relprio <= 0 && qos_relprio >= THREAD_QOS_MIN_TIER_IMPORTANCE);

  priority = thread_qos_policy_params.qos_pri[qos];
  qos_scaled_relprio = thread_qos_scaled_relative_priority(qos, qos_relprio);

  if (qos == THREAD_QOS_USER_INTERACTIVE && qos_ui_is_urgent == 1) {

   qos_scaled_relprio += 1;
  }



  priority += qos_scaled_relprio;
 } else {
  if (thread->importance > MAXPRI)
   priority = MAXPRI;
  else if (thread->importance < -MAXPRI)
   priority = -MAXPRI;
  else
   priority = thread->importance;

  priority += thread->task_priority;
 }

 priority = MAX(priority, thread->user_promotion_basepri);
 if (priority > thread->max_priority)
  priority = thread->max_priority;
 else if (priority < MINPRI)
  priority = MINPRI;

 if (thread->saved_mode == TH_MODE_REALTIME &&
     thread->sched_flags & TH_SFLAG_FAILSAFE)
  priority = DEPRESSPRI;

 if (thread->effective_policy.thep_terminated == TRUE) {







  if (priority < thread->task_priority)
   priority = thread->task_priority;
  if (priority < BASEPRI_DEFAULT)
   priority = BASEPRI_DEFAULT;
 }







 sched_set_thread_base_priority(thread, priority);
}
