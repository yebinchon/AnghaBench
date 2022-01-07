
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_2__* thread_t ;
typedef TYPE_3__* task_pend_token_t ;
struct thread_requested_policy {int thrp_qos; int thrp_qos_override; int thrp_qos_promote; int thrp_qos_ipc_override; int thrp_qos_workq_override; int thrp_qos_sync_ipc_override; scalar_t__ thrp_qos_relprio; int thrp_int_iotier; int thrp_ext_iotier; int thrp_latency_qos; int thrp_through_qos; scalar_t__ thrp_terminated; scalar_t__ thrp_int_iopassive; scalar_t__ thrp_ext_iopassive; scalar_t__ thrp_pidbind_bg; scalar_t__ thrp_ext_darwinbg; scalar_t__ thrp_int_darwinbg; } ;
struct thread_effective_policy {scalar_t__ thep_qos_ui_is_urgent; int thep_qos; int thep_qos_promote; scalar_t__ thep_qos_relprio; int thep_darwinbg; int thep_new_sockets_bg; int thep_all_sockets_bg; int thep_io_tier; int thep_io_passive; int thep_latency_qos; int thep_through_qos; int thep_terminated; } ;
struct task_effective_policy {scalar_t__ tep_qos_ui_is_urgent; int tep_qos_clamp; int tep_qos_ceiling; int tep_bg_iotier; int tep_io_tier; int tep_latency_qos; int tep_through_qos; scalar_t__ tep_terminated; scalar_t__ tep_io_passive; scalar_t__ tep_new_sockets_bg; scalar_t__ tep_darwinbg; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_12__ {int* qos_iotier; int* qos_latency_qos; int* qos_through_qos; } ;
struct TYPE_11__ {int tpt_update_sockets; int tpt_update_throttle; int tpt_update_thread_sfi; int tpt_force_recompute_pri; } ;
struct TYPE_10__ {struct thread_effective_policy effective_policy; TYPE_1__* task; struct thread_requested_policy requested_policy; } ;
struct TYPE_9__ {struct task_effective_policy effective_policy; } ;


 scalar_t__ FALSE ;
 int LATENCY_QOS_TIER_UNSPECIFIED ;
 int MAX (int,int) ;
 void* MIN (int,int) ;
 int THREAD_QOS_BACKGROUND ;
 int THREAD_QOS_MAINTENANCE ;
 int THREAD_QOS_UNSPECIFIED ;
 void* THROTTLE_LEVEL_TIER0 ;
 int THROUGHPUT_QOS_TIER_UNSPECIFIED ;
 scalar_t__ TRUE ;
 int assert (int) ;
 TYPE_6__ thread_qos_policy_params ;
 int thread_recompute_priority (TYPE_2__*) ;
 int thread_update_qos_cpu_time_locked (TYPE_2__*) ;

__attribute__((used)) static void
thread_policy_update_internal_spinlocked(thread_t thread, boolean_t recompute_priority,
                                         task_pend_token_t pend_token)
{





 struct thread_requested_policy requested = thread->requested_policy;
 struct task_effective_policy task_effective = thread->task->effective_policy;
 struct thread_effective_policy next = {};

 next.thep_qos_ui_is_urgent = task_effective.tep_qos_ui_is_urgent;

 uint32_t next_qos = requested.thrp_qos;

 if (requested.thrp_qos != THREAD_QOS_UNSPECIFIED) {
  next_qos = MAX(requested.thrp_qos_override, next_qos);
  next_qos = MAX(requested.thrp_qos_promote, next_qos);
  next_qos = MAX(requested.thrp_qos_ipc_override, next_qos);
  next_qos = MAX(requested.thrp_qos_workq_override, next_qos);
 }

 next.thep_qos = next_qos;


 if (task_effective.tep_qos_clamp != THREAD_QOS_UNSPECIFIED) {
  if (next.thep_qos != THREAD_QOS_UNSPECIFIED)
   next.thep_qos = MIN(task_effective.tep_qos_clamp, next.thep_qos);
  else
   next.thep_qos = task_effective.tep_qos_clamp;
 }





 next.thep_qos_promote = next.thep_qos;


 if (task_effective.tep_qos_ceiling != THREAD_QOS_UNSPECIFIED &&
     next.thep_qos != THREAD_QOS_UNSPECIFIED) {
  next.thep_qos = MIN(task_effective.tep_qos_ceiling, next.thep_qos);
 }


 assert(requested.thrp_qos_sync_ipc_override == THREAD_QOS_UNSPECIFIED);
 if ((requested.thrp_qos != THREAD_QOS_UNSPECIFIED) &&
     (requested.thrp_qos == next.thep_qos) &&
     (requested.thrp_qos_override == THREAD_QOS_UNSPECIFIED)) {
  next.thep_qos_relprio = requested.thrp_qos_relprio;
 } else {
  next.thep_qos_relprio = 0;
 }


 boolean_t wants_darwinbg = FALSE;
 boolean_t wants_all_sockets_bg = FALSE;







 if (requested.thrp_int_darwinbg || requested.thrp_ext_darwinbg)
  wants_all_sockets_bg = wants_darwinbg = TRUE;

 if (requested.thrp_pidbind_bg)
  wants_all_sockets_bg = wants_darwinbg = TRUE;

 if (task_effective.tep_darwinbg)
  wants_darwinbg = TRUE;

 if (next.thep_qos == THREAD_QOS_BACKGROUND ||
     next.thep_qos == THREAD_QOS_MAINTENANCE)
  wants_darwinbg = TRUE;



 if (wants_darwinbg)
  next.thep_darwinbg = 1;

 if (next.thep_darwinbg || task_effective.tep_new_sockets_bg)
  next.thep_new_sockets_bg = 1;


 if (wants_all_sockets_bg)
  next.thep_all_sockets_bg = 1;


 if (next.thep_darwinbg &&
     (next.thep_qos > THREAD_QOS_BACKGROUND || next.thep_qos == THREAD_QOS_UNSPECIFIED)) {
  next.thep_qos = THREAD_QOS_BACKGROUND;
  next.thep_qos_relprio = 0;
 }



 int iopol = THROTTLE_LEVEL_TIER0;


 if (next.thep_darwinbg)
  iopol = MAX(iopol, task_effective.tep_bg_iotier);

 iopol = MAX(iopol, task_effective.tep_io_tier);


 iopol = MAX(iopol, thread_qos_policy_params.qos_iotier[next.thep_qos]);

 iopol = MAX(iopol, requested.thrp_int_iotier);
 iopol = MAX(iopol, requested.thrp_ext_iotier);

 next.thep_io_tier = iopol;






 boolean_t qos_io_override_active = FALSE;
 if (thread_qos_policy_params.qos_iotier[next.thep_qos] <
     thread_qos_policy_params.qos_iotier[requested.thrp_qos])
  qos_io_override_active = TRUE;


 if (requested.thrp_ext_iopassive ||
     requested.thrp_int_iopassive ||
     qos_io_override_active ||
     task_effective.tep_io_passive )
  next.thep_io_passive = 1;


 uint32_t latency_qos = requested.thrp_latency_qos;

 latency_qos = MAX(latency_qos, task_effective.tep_latency_qos);
 latency_qos = MAX(latency_qos, thread_qos_policy_params.qos_latency_qos[next.thep_qos]);

 next.thep_latency_qos = latency_qos;


 uint32_t through_qos = requested.thrp_through_qos;

 through_qos = MAX(through_qos, task_effective.tep_through_qos);
 through_qos = MAX(through_qos, thread_qos_policy_params.qos_through_qos[next.thep_qos]);

 next.thep_through_qos = through_qos;

 if (task_effective.tep_terminated || requested.thrp_terminated) {

  next.thep_terminated = 1;
  next.thep_darwinbg = 0;
  next.thep_io_tier = THROTTLE_LEVEL_TIER0;
  next.thep_qos = THREAD_QOS_UNSPECIFIED;
  next.thep_latency_qos = LATENCY_QOS_TIER_UNSPECIFIED;
  next.thep_through_qos = THROUGHPUT_QOS_TIER_UNSPECIFIED;
 }






 struct thread_effective_policy prev = thread->effective_policy;

 thread_update_qos_cpu_time_locked(thread);


 thread->effective_policy = next;






 if (prev.thep_all_sockets_bg != next.thep_all_sockets_bg)
  pend_token->tpt_update_sockets = 1;


 if (prev.thep_io_tier != next.thep_io_tier)
  pend_token->tpt_update_throttle = 1;





 if (prev.thep_qos != next.thep_qos ||
     prev.thep_darwinbg != next.thep_darwinbg )
  pend_token->tpt_update_thread_sfi = 1;







 if (prev.thep_qos != next.thep_qos ||
     prev.thep_qos_relprio != next.thep_qos_relprio ||
     prev.thep_qos_ui_is_urgent != next.thep_qos_ui_is_urgent ||
     prev.thep_terminated != next.thep_terminated ||
     pend_token->tpt_force_recompute_pri == 1 ||
     recompute_priority) {
  thread_recompute_priority(thread);
 }
}
