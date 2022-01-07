
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_10__ ;


typedef TYPE_2__* thread_time_constraint_policy_t ;
typedef int thread_throughput_qos_t ;
typedef TYPE_3__* thread_throughput_qos_policy_t ;
typedef TYPE_4__* thread_t ;
typedef TYPE_5__* thread_qos_policy_t ;
typedef TYPE_6__* thread_precedence_policy_t ;
typedef int thread_policy_t ;
typedef int thread_policy_flavor_t ;
typedef int thread_latency_qos_t ;
typedef TYPE_7__* thread_latency_qos_policy_t ;
typedef TYPE_8__* thread_extended_policy_t ;
typedef TYPE_9__* thread_background_policy_t ;
typedef TYPE_10__* thread_affinity_policy_t ;
struct task_pend_token {int tpt_update_thread_sfi; } ;
typedef int spl_t ;
typedef int sched_mode_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int boolean_t ;
struct TYPE_31__ {int priority; } ;
struct TYPE_30__ {int timeshare; } ;
struct TYPE_29__ {int thread_latency_qos_tier; } ;
struct TYPE_28__ {int importance; } ;
struct TYPE_27__ {int qos_tier; int tier_importance; } ;
struct TYPE_23__ {int preemptible; int constraint; int computation; int period; } ;
struct TYPE_26__ {int task; int importance; TYPE_1__ realtime; int active; } ;
struct TYPE_25__ {int thread_throughput_qos_tier; } ;
struct TYPE_24__ {int preemptible; int constraint; int computation; int period; } ;
struct TYPE_22__ {int affinity_tag; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_NOT_SUPPORTED ;
 int KERN_PROTECTION_FAILURE ;
 int KERN_SUCCESS ;
 int KERN_TERMINATED ;
 int TASK_POLICY_ATTRIBUTE ;
 int TASK_POLICY_DARWIN_BG ;
 int TASK_POLICY_DISABLE ;
 int TASK_POLICY_ENABLE ;
 int TASK_POLICY_EXTERNAL ;
 int TASK_POLICY_INTERNAL ;
 int TASK_POLICY_LATENCY_QOS ;
 int TASK_POLICY_QOS_AND_RELPRIO ;
 int TASK_POLICY_THROUGH_QOS ;

 int THREAD_AFFINITY_POLICY_COUNT ;

 int THREAD_BACKGROUND_POLICY_COUNT ;
 int THREAD_BACKGROUND_POLICY_DARWIN_BG ;

 int THREAD_EXTENDED_POLICY_COUNT ;

 int THREAD_LATENCY_QOS_POLICY_COUNT ;

 int THREAD_PRECEDENCE_POLICY_COUNT ;
 int THREAD_QOS_LAST ;
 int THREAD_QOS_MIN_TIER_IMPORTANCE ;

 int THREAD_QOS_POLICY_COUNT ;
 int THREAD_QOS_UNSPECIFIED ;

 int THREAD_THROUGHPUT_QOS_POLICY_COUNT ;

 int THREAD_TIME_CONSTRAINT_POLICY_COUNT ;
 int TH_MODE_FIXED ;
 int TH_MODE_REALTIME ;
 int TH_MODE_TIMESHARE ;
 int TRUE ;
 int current_task () ;
 TYPE_4__* current_thread () ;
 int max_rt_quantum ;
 int min_rt_quantum ;
 int proc_set_thread_policy_locked (TYPE_4__*,int,int ,int,int ,struct task_pend_token*) ;
 int qos_extract (int ) ;
 int qos_latency_policy_validate (int ) ;
 int qos_throughput_policy_validate (int ) ;
 int splsched () ;
 int splx (int ) ;
 int thread_affinity_is_supported () ;
 int thread_affinity_set (TYPE_4__*,int ) ;
 int thread_lock (TYPE_4__*) ;
 int thread_mtx_lock (TYPE_4__*) ;
 int thread_mtx_unlock (TYPE_4__*) ;
 int thread_policy_update_complete_unlocked (TYPE_4__*,struct task_pend_token*) ;
 int thread_recompute_priority (TYPE_4__*) ;
 int thread_set_user_sched_mode_and_recompute_pri (TYPE_4__*,int ) ;
 int thread_unlock (TYPE_4__*) ;

kern_return_t
thread_policy_set_internal(
                           thread_t thread,
                           thread_policy_flavor_t flavor,
                           thread_policy_t policy_info,
                           mach_msg_type_number_t count)
{
 kern_return_t result = KERN_SUCCESS;
 struct task_pend_token pend_token = {};

 thread_mtx_lock(thread);
 if (!thread->active) {
  thread_mtx_unlock(thread);

  return (KERN_TERMINATED);
 }

 switch (flavor) {

 case 133:
 {
  boolean_t timeshare = TRUE;

  if (count >= THREAD_EXTENDED_POLICY_COUNT) {
   thread_extended_policy_t info;

   info = (thread_extended_policy_t)policy_info;
   timeshare = info->timeshare;
  }

  sched_mode_t mode = (timeshare == TRUE) ? TH_MODE_TIMESHARE : TH_MODE_FIXED;

  spl_t s = splsched();
  thread_lock(thread);

  thread_set_user_sched_mode_and_recompute_pri(thread, mode);

  thread_unlock(thread);
  splx(s);

  pend_token.tpt_update_thread_sfi = 1;

  break;
 }

 case 128:
 {
  thread_time_constraint_policy_t info;

  if (count < THREAD_TIME_CONSTRAINT_POLICY_COUNT) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }

  info = (thread_time_constraint_policy_t)policy_info;
  if (info->constraint < info->computation ||
      info->computation > max_rt_quantum ||
      info->computation < min_rt_quantum ) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }

  spl_t s = splsched();
  thread_lock(thread);

  thread->realtime.period = info->period;
  thread->realtime.computation = info->computation;
  thread->realtime.constraint = info->constraint;
  thread->realtime.preemptible = info->preemptible;

  thread_set_user_sched_mode_and_recompute_pri(thread, TH_MODE_REALTIME);

  thread_unlock(thread);
  splx(s);

  pend_token.tpt_update_thread_sfi = 1;

  break;
 }

 case 131:
 {
  thread_precedence_policy_t info;

  if (count < THREAD_PRECEDENCE_POLICY_COUNT) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }
  info = (thread_precedence_policy_t)policy_info;

  spl_t s = splsched();
  thread_lock(thread);

  thread->importance = info->importance;

  thread_recompute_priority(thread);

  thread_unlock(thread);
  splx(s);

  break;
 }

 case 135:
 {
  thread_affinity_policy_t info;

  if (!thread_affinity_is_supported()) {
   result = KERN_NOT_SUPPORTED;
   break;
  }
  if (count < THREAD_AFFINITY_POLICY_COUNT) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }

  info = (thread_affinity_policy_t) policy_info;






  thread_mtx_unlock(thread);
  return thread_affinity_set(thread, info->affinity_tag);
 }
 case 129:
 {
  thread_throughput_qos_policy_t info = (thread_throughput_qos_policy_t) policy_info;
  thread_throughput_qos_t tqos;

  if (count < THREAD_THROUGHPUT_QOS_POLICY_COUNT) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }

  if ((result = qos_throughput_policy_validate(info->thread_throughput_qos_tier)) != KERN_SUCCESS)
   break;

  tqos = qos_extract(info->thread_throughput_qos_tier);

  proc_set_thread_policy_locked(thread, TASK_POLICY_ATTRIBUTE,
                                TASK_POLICY_THROUGH_QOS, tqos, 0, &pend_token);

  break;
 }

 case 132:
 {
  thread_latency_qos_policy_t info = (thread_latency_qos_policy_t) policy_info;
  thread_latency_qos_t lqos;

  if (count < THREAD_LATENCY_QOS_POLICY_COUNT) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }

  if ((result = qos_latency_policy_validate(info->thread_latency_qos_tier)) != KERN_SUCCESS)
   break;

  lqos = qos_extract(info->thread_latency_qos_tier);

  proc_set_thread_policy_locked(thread, TASK_POLICY_ATTRIBUTE,
                                TASK_POLICY_LATENCY_QOS, lqos, 0, &pend_token);

  break;
 }

 case 130:
 {
  thread_qos_policy_t info = (thread_qos_policy_t)policy_info;

  if (count < THREAD_QOS_POLICY_COUNT) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }

  if (info->qos_tier < 0 || info->qos_tier >= THREAD_QOS_LAST) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }

  if (info->tier_importance > 0 || info->tier_importance < THREAD_QOS_MIN_TIER_IMPORTANCE) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }

  if (info->qos_tier == THREAD_QOS_UNSPECIFIED && info->tier_importance != 0) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }

  proc_set_thread_policy_locked(thread, TASK_POLICY_ATTRIBUTE, TASK_POLICY_QOS_AND_RELPRIO,
                                info->qos_tier, -info->tier_importance, &pend_token);

  break;
 }

 default:
  result = KERN_INVALID_ARGUMENT;
  break;
 }

 thread_mtx_unlock(thread);

 thread_policy_update_complete_unlocked(thread, &pend_token);

 return (result);
}
