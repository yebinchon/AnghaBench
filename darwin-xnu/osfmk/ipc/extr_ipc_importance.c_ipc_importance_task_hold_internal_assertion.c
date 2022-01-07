
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ipc_importance_task_t ;


 int KERN_SUCCESS ;
 int ipc_importance_lock () ;
 int ipc_importance_task_hold_internal_assertion_locked (int ,int ) ;
 scalar_t__ ipc_importance_task_is_any_receiver_type (int ) ;
 int ipc_importance_unlock () ;

int
ipc_importance_task_hold_internal_assertion(ipc_importance_task_t task_imp, uint32_t count)
{
 int ret = KERN_SUCCESS;

 if (ipc_importance_task_is_any_receiver_type(task_imp)) {
  ipc_importance_lock();
  ret = ipc_importance_task_hold_internal_assertion_locked(task_imp, count);
  ipc_importance_unlock();
 }
 return ret;
}
