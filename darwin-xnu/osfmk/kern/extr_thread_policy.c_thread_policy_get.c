
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_21__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef void* uint64_t ;
typedef TYPE_3__* thread_time_constraint_policy_t ;
typedef void* thread_throughput_qos_t ;
typedef TYPE_4__* thread_throughput_qos_policy_t ;
typedef TYPE_5__* thread_t ;
typedef TYPE_6__* thread_qos_policy_t ;
typedef TYPE_7__* thread_precedence_policy_t ;
typedef scalar_t__ thread_policy_t ;
typedef TYPE_8__* thread_policy_state_t ;
typedef int thread_policy_flavor_t ;
typedef void* thread_latency_qos_t ;
typedef TYPE_9__* thread_latency_qos_policy_t ;
typedef TYPE_10__* thread_extended_policy_t ;
typedef TYPE_11__* thread_affinity_policy_t ;
typedef int spl_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int boolean_t ;
struct TYPE_34__ {int thread_latency_qos_tier; } ;
struct TYPE_33__ {int pending; int effective; int requested; int thps_ipc_overrides; int thps_user_promotion_basepri; int thps_user_promotions; void* thps_effective_policy; void* thps_requested_policy; int flags; } ;
struct TYPE_32__ {int importance; } ;
struct TYPE_31__ {int tier_importance; void* qos_tier; } ;
struct TYPE_25__ {void* preemptible; int constraint; int computation; int period; } ;
struct TYPE_30__ {int sched_flags; int ipc_overrides; int user_promotion_basepri; int effective_policy; int requested_policy; int static_param; int importance; TYPE_1__ realtime; int saved_mode; int sched_mode; int active; } ;
struct TYPE_29__ {int thread_throughput_qos_tier; } ;
struct TYPE_28__ {void* preemptible; int constraint; int computation; int period; } ;
struct TYPE_27__ {int * val; } ;
struct TYPE_26__ {TYPE_2__ sec_token; } ;
struct TYPE_24__ {int affinity_tag; } ;
struct TYPE_23__ {int timeshare; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_NOT_SUPPORTED ;
 int KERN_PROTECTION_FAILURE ;
 int KERN_SUCCESS ;
 int KERN_TERMINATED ;
 int TASK_POLICY_ATTRIBUTE ;
 int TASK_POLICY_LATENCY_QOS ;
 int TASK_POLICY_QOS_AND_RELPRIO ;
 int TASK_POLICY_THROUGH_QOS ;

 int THREAD_AFFINITY_POLICY_COUNT ;
 int THREAD_AFFINITY_TAG_NULL ;

 int THREAD_EXTENDED_POLICY_COUNT ;

 int THREAD_LATENCY_QOS_POLICY_COUNT ;
 TYPE_5__* THREAD_NULL ;

 int THREAD_POLICY_STATE_COUNT ;
 int THREAD_POLICY_STATE_FLAG_STATIC_PARAM ;

 int THREAD_PRECEDENCE_POLICY_COUNT ;

 int THREAD_QOS_POLICY_COUNT ;
 void* THREAD_QOS_UNSPECIFIED ;

 int THREAD_THROUGHPUT_QOS_POLICY_COUNT ;

 int THREAD_TIME_CONSTRAINT_POLICY_COUNT ;
 int TH_MODE_REALTIME ;
 int TH_MODE_TIMESHARE ;
 int TH_SFLAG_DEMOTED_MASK ;
 void* TRUE ;
 TYPE_21__* current_task () ;
 int default_timeshare_computation ;
 int default_timeshare_constraint ;
 int proc_get_thread_policy_bitfield (TYPE_5__*,TYPE_8__*) ;
 void* proc_get_thread_policy_locked (TYPE_5__*,int ,int ,int*) ;
 int qos_latency_policy_package (void*) ;
 int qos_throughput_policy_package (void*) ;
 int splsched () ;
 int splx (int ) ;
 int thread_affinity_get (TYPE_5__*) ;
 int thread_affinity_is_supported () ;
 int thread_lock (TYPE_5__*) ;
 int thread_mtx_lock (TYPE_5__*) ;
 int thread_mtx_unlock (TYPE_5__*) ;
 int thread_unlock (TYPE_5__*) ;

kern_return_t
thread_policy_get(
 thread_t thread,
 thread_policy_flavor_t flavor,
 thread_policy_t policy_info,
 mach_msg_type_number_t *count,
 boolean_t *get_default)
{
 kern_return_t result = KERN_SUCCESS;

 if (thread == THREAD_NULL)
  return (KERN_INVALID_ARGUMENT);

 thread_mtx_lock(thread);
 if (!thread->active) {
  thread_mtx_unlock(thread);

  return (KERN_TERMINATED);
 }

 switch (flavor) {

 case 134:
 {
  boolean_t timeshare = TRUE;

  if (!(*get_default)) {
   spl_t s = splsched();
   thread_lock(thread);

   if ( (thread->sched_mode != TH_MODE_REALTIME) &&
      (thread->saved_mode != TH_MODE_REALTIME) ) {
    if (!(thread->sched_flags & TH_SFLAG_DEMOTED_MASK))
     timeshare = (thread->sched_mode == TH_MODE_TIMESHARE) != 0;
    else
     timeshare = (thread->saved_mode == TH_MODE_TIMESHARE) != 0;
   }
   else
    *get_default = TRUE;

   thread_unlock(thread);
   splx(s);
  }

  if (*count >= THREAD_EXTENDED_POLICY_COUNT) {
   thread_extended_policy_t info;

   info = (thread_extended_policy_t)policy_info;
   info->timeshare = timeshare;
  }

  break;
 }

 case 128:
 {
  thread_time_constraint_policy_t info;

  if (*count < THREAD_TIME_CONSTRAINT_POLICY_COUNT) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }

  info = (thread_time_constraint_policy_t)policy_info;

  if (!(*get_default)) {
   spl_t s = splsched();
   thread_lock(thread);

   if ( (thread->sched_mode == TH_MODE_REALTIME) ||
     (thread->saved_mode == TH_MODE_REALTIME) ) {
    info->period = thread->realtime.period;
    info->computation = thread->realtime.computation;
    info->constraint = thread->realtime.constraint;
    info->preemptible = thread->realtime.preemptible;
   }
   else
    *get_default = TRUE;

   thread_unlock(thread);
   splx(s);
  }

  if (*get_default) {
   info->period = 0;
   info->computation = default_timeshare_computation;
   info->constraint = default_timeshare_constraint;
   info->preemptible = TRUE;
  }

  break;
 }

 case 131:
 {
  thread_precedence_policy_t info;

  if (*count < THREAD_PRECEDENCE_POLICY_COUNT) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }

  info = (thread_precedence_policy_t)policy_info;

  if (!(*get_default)) {
   spl_t s = splsched();
   thread_lock(thread);

   info->importance = thread->importance;

   thread_unlock(thread);
   splx(s);
  }
  else
   info->importance = 0;

  break;
 }

 case 135:
 {
  thread_affinity_policy_t info;

  if (!thread_affinity_is_supported()) {
   result = KERN_NOT_SUPPORTED;
   break;
  }
  if (*count < THREAD_AFFINITY_POLICY_COUNT) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }

  info = (thread_affinity_policy_t)policy_info;

  if (!(*get_default))
   info->affinity_tag = thread_affinity_get(thread);
  else
   info->affinity_tag = THREAD_AFFINITY_TAG_NULL;

  break;
 }

 case 132:
 {
  thread_policy_state_t info;

  if (*count < THREAD_POLICY_STATE_COUNT) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }


  if (current_task()->sec_token.val[0] != 0) {
   result = KERN_PROTECTION_FAILURE;
   break;
  }

  info = (thread_policy_state_t)(void*)policy_info;

  if (!(*get_default)) {
   info->flags = 0;

   spl_t s = splsched();
   thread_lock(thread);

   info->flags |= (thread->static_param ? THREAD_POLICY_STATE_FLAG_STATIC_PARAM : 0);

   info->thps_requested_policy = *(uint64_t*)(void*)(&thread->requested_policy);
   info->thps_effective_policy = *(uint64_t*)(void*)(&thread->effective_policy);

   info->thps_user_promotions = 0;
   info->thps_user_promotion_basepri = thread->user_promotion_basepri;
   info->thps_ipc_overrides = thread->ipc_overrides;

   proc_get_thread_policy_bitfield(thread, info);

   thread_unlock(thread);
   splx(s);
  } else {
   info->requested = 0;
   info->effective = 0;
   info->pending = 0;
  }

  break;
 }

 case 133:
 {
  thread_latency_qos_policy_t info = (thread_latency_qos_policy_t) policy_info;
  thread_latency_qos_t plqos;

  if (*count < THREAD_LATENCY_QOS_POLICY_COUNT) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }

  if (*get_default) {
   plqos = 0;
  } else {
   plqos = proc_get_thread_policy_locked(thread, TASK_POLICY_ATTRIBUTE, TASK_POLICY_LATENCY_QOS, ((void*)0));
  }

  info->thread_latency_qos_tier = qos_latency_policy_package(plqos);
 }
 break;

 case 129:
 {
  thread_throughput_qos_policy_t info = (thread_throughput_qos_policy_t) policy_info;
  thread_throughput_qos_t ptqos;

  if (*count < THREAD_THROUGHPUT_QOS_POLICY_COUNT) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }

  if (*get_default) {
   ptqos = 0;
  } else {
   ptqos = proc_get_thread_policy_locked(thread, TASK_POLICY_ATTRIBUTE, TASK_POLICY_THROUGH_QOS, ((void*)0));
  }

  info->thread_throughput_qos_tier = qos_throughput_policy_package(ptqos);
 }
 break;

 case 130:
 {
  thread_qos_policy_t info = (thread_qos_policy_t)policy_info;

  if (*count < THREAD_QOS_POLICY_COUNT) {
   result = KERN_INVALID_ARGUMENT;
   break;
  }

  if (!(*get_default)) {
   int relprio_value = 0;
   info->qos_tier = proc_get_thread_policy_locked(thread, TASK_POLICY_ATTRIBUTE,
                                                  TASK_POLICY_QOS_AND_RELPRIO, &relprio_value);

   info->tier_importance = -relprio_value;
  } else {
   info->qos_tier = THREAD_QOS_UNSPECIFIED;
   info->tier_importance = 0;
  }

  break;
 }

 default:
  result = KERN_INVALID_ARGUMENT;
  break;
 }

 thread_mtx_unlock(thread);

 return (result);
}
