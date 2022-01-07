
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ipc_importance_task_t ;
typedef int boolean_t ;


 scalar_t__ IIT_NULL ;
 int ipc_importance_lock () ;
 int ipc_importance_reset_locked (scalar_t__,int ) ;
 int ipc_importance_unlock () ;

void
ipc_importance_reset(ipc_importance_task_t task_imp, boolean_t donor)
{
 if (IIT_NULL == task_imp) {
  return;
 }
 ipc_importance_lock();
 ipc_importance_reset_locked(task_imp, donor);
 ipc_importance_unlock();
}
