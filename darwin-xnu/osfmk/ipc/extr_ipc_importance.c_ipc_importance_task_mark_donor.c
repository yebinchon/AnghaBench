
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ipc_importance_task_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {int iit_donor; int iit_task; int iit_transitions; } ;


 int DBG_FUNC_NONE ;
 int IMPORTANCE_CODE (int ,int ) ;
 int IMP_DONOR_CHANGE ;
 int IMP_DONOR_INIT_DONOR_STATE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,scalar_t__,int,int,int ) ;
 int assert (int ) ;
 int ipc_importance_lock () ;
 int ipc_importance_unlock () ;
 int task_pid (int ) ;

void
ipc_importance_task_mark_donor(ipc_importance_task_t task_imp, boolean_t donating)
{
 assert(task_imp != ((void*)0));

 ipc_importance_lock();

 int old_donor = task_imp->iit_donor;

 task_imp->iit_donor = (donating ? 1 : 0);

 if (task_imp->iit_donor > 0 && old_donor == 0)
  task_imp->iit_transitions++;

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
                           (IMPORTANCE_CODE(IMP_DONOR_CHANGE, IMP_DONOR_INIT_DONOR_STATE)) | DBG_FUNC_NONE,
                           task_pid(task_imp->iit_task), donating,
                           old_donor, task_imp->iit_donor, 0);

 ipc_importance_unlock();
}
