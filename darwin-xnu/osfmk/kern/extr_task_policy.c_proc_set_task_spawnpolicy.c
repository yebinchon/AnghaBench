
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef TYPE_2__* task_t ;
struct task_pend_token {int tpt_update_live_donor; } ;
typedef int * ipc_port_t ;
struct TYPE_18__ {int trp_tal_enabled; int trp_apptype; int trp_role; int trp_qos_clamp; } ;
struct TYPE_19__ {TYPE_1__ requested_policy; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int FALSE ;
 int IMPORTANCE_CODE (int ,int) ;
 int IMP_TASK_APPTYPE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int ,int ,int,int ) ;







 int TASK_FOREGROUND_APPLICATION ;
 int TASK_UNSPECIFIED ;
 int THREAD_QOS_UNSPECIFIED ;
 int TRUE ;
 int ipc_importance_interactive_receiver ;
 int task_add_importance_watchport (TYPE_2__*,int *,int*) ;
 int task_importance_hold_internal_assertion (TYPE_2__*,int) ;
 int task_importance_mark_denap_receiver (TYPE_2__*,int ) ;
 int task_importance_mark_donor (TYPE_2__*,int ) ;
 int task_importance_mark_live_donor (TYPE_2__*,int ) ;
 int task_importance_mark_receiver (TYPE_2__*,int ) ;
 int task_is_importance_receiver (TYPE_2__*) ;
 int task_lock (TYPE_2__*) ;
 int task_pid (TYPE_2__*) ;
 int task_policy_update_complete_unlocked (TYPE_2__*,struct task_pend_token*) ;
 int task_policy_update_locked (TYPE_2__*,struct task_pend_token*) ;
 int task_unlock (TYPE_2__*) ;
 int trequested_0 (TYPE_2__*) ;
 int trequested_1 (TYPE_2__*) ;

void
proc_set_task_spawnpolicy(task_t task, int apptype, int qos_clamp, int role,
                          ipc_port_t * portwatch_ports, int portwatch_count)
{
 struct task_pend_token pend_token = {};

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
      (IMPORTANCE_CODE(IMP_TASK_APPTYPE, apptype)) | DBG_FUNC_START,
      task_pid(task), trequested_0(task), trequested_1(task),
      apptype, 0);

 switch (apptype) {
  case 133:
  case 134:

   task_importance_mark_donor(task, FALSE);
   task_importance_mark_live_donor(task, TRUE);
   task_importance_mark_receiver(task, FALSE);




   task_importance_mark_denap_receiver(task, TRUE);

   break;

  case 130:
   task_importance_mark_donor(task, TRUE);
   task_importance_mark_live_donor(task, FALSE);
   task_importance_mark_receiver(task, ipc_importance_interactive_receiver);
   task_importance_mark_denap_receiver(task, FALSE);
   break;

  case 129:
   task_importance_mark_donor(task, TRUE);
   task_importance_mark_live_donor(task, FALSE);
   task_importance_mark_receiver(task, FALSE);
   task_importance_mark_denap_receiver(task, FALSE);
   break;

  case 132:
   task_importance_mark_donor(task, FALSE);
   task_importance_mark_live_donor(task, FALSE);
   task_importance_mark_receiver(task, TRUE);
   task_importance_mark_denap_receiver(task, FALSE);
   break;

  case 131:
   task_importance_mark_donor(task, FALSE);
   task_importance_mark_live_donor(task, FALSE);
   task_importance_mark_receiver(task, FALSE);
   task_importance_mark_denap_receiver(task, FALSE);
   break;

  case 128:
   break;
 }

 if (portwatch_ports != ((void*)0) && apptype == 132) {
  int portwatch_boosts = 0;

  for (int i = 0; i < portwatch_count; i++) {
   ipc_port_t port = ((void*)0);

   if ((port = portwatch_ports[i]) != ((void*)0)) {
    int boost = 0;
    task_add_importance_watchport(task, port, &boost);
    portwatch_boosts += boost;
   }
  }

  if (portwatch_boosts > 0) {
   task_importance_hold_internal_assertion(task, portwatch_boosts);
  }
 }

 task_lock(task);

 if (apptype == 133) {

  task->requested_policy.trp_tal_enabled = 1;
 }

 if (apptype != 128) {
  task->requested_policy.trp_apptype = apptype;
 }







 if (role != TASK_UNSPECIFIED) {
  task->requested_policy.trp_role = role;
 }

 if (qos_clamp != THREAD_QOS_UNSPECIFIED) {
  task->requested_policy.trp_qos_clamp = qos_clamp;
 }

 task_policy_update_locked(task, &pend_token);

 task_unlock(task);


 pend_token.tpt_update_live_donor = 1;

 task_policy_update_complete_unlocked(task, &pend_token);

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
      (IMPORTANCE_CODE(IMP_TASK_APPTYPE, apptype)) | DBG_FUNC_END,
      task_pid(task), trequested_0(task), trequested_1(task),
      task_is_importance_receiver(task), 0);
}
