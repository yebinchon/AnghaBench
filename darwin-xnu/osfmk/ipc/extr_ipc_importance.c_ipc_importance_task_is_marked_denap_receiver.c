
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ipc_importance_task_t ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ iit_denap; } ;


 TYPE_1__* IIT_NULL ;

boolean_t
ipc_importance_task_is_marked_denap_receiver(ipc_importance_task_t task_imp)
{
 return (IIT_NULL != task_imp && 0 != task_imp->iit_denap);
}
