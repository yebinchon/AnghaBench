
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ipc_importance_task_t ;
struct TYPE_6__ {int iie_task_refs_added; } ;
struct TYPE_5__ {TYPE_3__ iit_elem; } ;


 TYPE_1__* IIT_NULL ;
 int incr_ref_counter (int ) ;
 int ipc_importance_reference (TYPE_3__*) ;

void
ipc_importance_task_reference(ipc_importance_task_t task_elem)
{
 if (IIT_NULL == task_elem)
  return;



 ipc_importance_reference(&task_elem->iit_elem);
}
