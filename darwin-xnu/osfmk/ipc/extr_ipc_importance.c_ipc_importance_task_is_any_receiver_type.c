
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_importance_task_t ;
typedef int boolean_t ;


 scalar_t__ ipc_importance_task_is_marked_denap_receiver (int ) ;
 scalar_t__ ipc_importance_task_is_marked_receiver (int ) ;

boolean_t
ipc_importance_task_is_any_receiver_type(ipc_importance_task_t task_imp)
{
 return (ipc_importance_task_is_marked_receiver(task_imp) ||
  ipc_importance_task_is_marked_denap_receiver(task_imp));
}
