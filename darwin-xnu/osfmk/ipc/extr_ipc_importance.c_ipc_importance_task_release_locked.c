
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ipc_importance_task_t ;
struct TYPE_6__ {int iie_task_refs_dropped; } ;
struct TYPE_5__ {TYPE_3__ iit_elem; } ;


 TYPE_1__* IIT_NULL ;
 int incr_ref_counter (int ) ;
 int ipc_importance_release_locked (TYPE_3__*) ;
 int ipc_importance_unlock () ;

__attribute__((used)) static void
ipc_importance_task_release_locked(ipc_importance_task_t task_elem)
{
 if (IIT_NULL == task_elem) {
  ipc_importance_unlock();
  return;
 }



 ipc_importance_release_locked(&task_elem->iit_elem);

}
