
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int kern_return_t ;
typedef TYPE_1__* ipc_importance_task_t ;
struct TYPE_5__ {scalar_t__ iit_filelocks; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int ipc_importance_lock () ;
 int ipc_importance_task_drop_internal_assertion_locked (TYPE_1__*,scalar_t__) ;
 scalar_t__ ipc_importance_task_is_any_receiver_type (TYPE_1__*) ;
 int ipc_importance_unlock () ;

kern_return_t
ipc_importance_task_drop_file_lock_assertion(ipc_importance_task_t task_imp, uint32_t count)
{
 kern_return_t ret = KERN_SUCCESS;

 if (ipc_importance_task_is_any_receiver_type(task_imp)) {
  ipc_importance_lock();
  if (count <= task_imp->iit_filelocks) {
   task_imp->iit_filelocks -= count;
   ret = ipc_importance_task_drop_internal_assertion_locked(task_imp, count);
  } else {
   ret = KERN_INVALID_ARGUMENT;
  }
  ipc_importance_unlock();
 }
 return ret;
}
