
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_2__* task_t ;
typedef TYPE_3__* ipc_importance_task_t ;
typedef int iit_update_type_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_12__ {int iit_donor; int iit_transitions; TYPE_2__* iit_task; } ;
struct TYPE_10__ {int tep_live_donor; } ;
struct TYPE_11__ {TYPE_1__ effective_policy; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int FALSE ;
 int IIT_UPDATE_DROP ;
 int IIT_UPDATE_HOLD ;
 int IMPORTANCE_CODE (int ,int ) ;
 int IMP_DONOR_CHANGE ;
 int IMP_DONOR_UPDATE_LIVE_DONOR_STATE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int,int ,int ,scalar_t__,int ) ;
 TYPE_2__* TASK_NULL ;
 int assert (int ) ;
 int ipc_importance_lock () ;
 scalar_t__ ipc_importance_task_is_marked_donor (TYPE_3__*) ;
 int ipc_importance_task_is_marked_live_donor (TYPE_3__*) ;
 int ipc_importance_task_propagate_assertion_locked (TYPE_3__*,int ,int ) ;
 int ipc_importance_unlock () ;
 int task_pid (TYPE_2__*) ;

void
ipc_importance_task_update_live_donor(ipc_importance_task_t task_imp)
{
 uint32_t task_live_donor;
 boolean_t before_donor;
 boolean_t after_donor;
 task_t target_task;

 assert(task_imp != ((void*)0));





 if (!ipc_importance_task_is_marked_live_donor(task_imp)) {
  return;
 }

 ipc_importance_lock();


 target_task = task_imp->iit_task;
 if (TASK_NULL == target_task) {
  ipc_importance_unlock();
  return;
 }
 before_donor = ipc_importance_task_is_marked_donor(task_imp);


 task_live_donor = target_task->effective_policy.tep_live_donor;
 task_imp->iit_donor = task_live_donor;

 after_donor = ipc_importance_task_is_marked_donor(task_imp);


 if (before_donor != after_donor) {
  iit_update_type_t type;


  if (0 == before_donor) {
   task_imp->iit_transitions++;
   type = IIT_UPDATE_HOLD;
  } else {
   type = IIT_UPDATE_DROP;
  }
  ipc_importance_task_propagate_assertion_locked(task_imp, type, FALSE);
 }







 ipc_importance_unlock();
}
