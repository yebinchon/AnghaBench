
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_importance_task_t ;
typedef int boolean_t ;


 int ipc_importance_task_is_marked_denap_receiver (int ) ;

boolean_t
ipc_importance_task_is_denap_receiver(ipc_importance_task_t task_imp)
{
 return (ipc_importance_task_is_marked_denap_receiver(task_imp));
}
