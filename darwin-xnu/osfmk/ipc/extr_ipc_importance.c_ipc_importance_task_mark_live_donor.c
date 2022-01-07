
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ipc_importance_task_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {int iit_live_donor; } ;


 int assert (int ) ;
 int ipc_importance_lock () ;
 int ipc_importance_unlock () ;

void
ipc_importance_task_mark_live_donor(ipc_importance_task_t task_imp, boolean_t live_donating)
{
 assert(task_imp != ((void*)0));

 ipc_importance_lock();
 task_imp->iit_live_donor = (live_donating ? 1 : 0);
 ipc_importance_unlock();
}
