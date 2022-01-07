
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kern_return_t ;
typedef int ipc_importance_task_t ;


 int IIT_UPDATE_DROP ;
 int KERN_SUCCESS ;
 int TRUE ;
 scalar_t__ ipc_importance_task_check_transition (int ,int ,int ) ;
 int ipc_importance_task_propagate_assertion_locked (int ,int ,int ) ;

__attribute__((used)) static kern_return_t
ipc_importance_task_drop_internal_assertion_locked(ipc_importance_task_t task_imp, uint32_t count)
{
 if (ipc_importance_task_check_transition(task_imp, IIT_UPDATE_DROP, count)) {
  ipc_importance_task_propagate_assertion_locked(task_imp, IIT_UPDATE_DROP, TRUE);
 }
 return KERN_SUCCESS;
}
