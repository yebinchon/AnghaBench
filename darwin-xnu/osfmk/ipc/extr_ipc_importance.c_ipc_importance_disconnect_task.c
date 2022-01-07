
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef TYPE_2__* ipc_importance_task_t ;
struct TYPE_12__ {TYPE_1__* iit_task; } ;
struct TYPE_11__ {TYPE_2__* task_imp_base; } ;


 TYPE_2__* IIT_NULL ;
 TYPE_1__* TASK_NULL ;
 int TRUE ;
 int assert (int) ;
 int ipc_importance_lock () ;
 int ipc_importance_reset_locked (TYPE_2__*,int ) ;
 int ipc_importance_task_release_locked (TYPE_2__*) ;
 int ipc_importance_unlock () ;
 int task_deallocate (TYPE_1__*) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

void
ipc_importance_disconnect_task(task_t task)
{
 ipc_importance_task_t task_imp;

 task_lock(task);
 ipc_importance_lock();
 task_imp = task->task_imp_base;


 if (IIT_NULL == task_imp) {
  ipc_importance_unlock();
  task_unlock(task);
  return;
 }


 assert(task_imp->iit_task == task);
 task_imp->iit_task = TASK_NULL;
 task->task_imp_base = IIT_NULL;
 task_unlock(task);


 ipc_importance_reset_locked(task_imp, TRUE);

 ipc_importance_task_release_locked(task_imp);



 task_deallocate(task);
}
