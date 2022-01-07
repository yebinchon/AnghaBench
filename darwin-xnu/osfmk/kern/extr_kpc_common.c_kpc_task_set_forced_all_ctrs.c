
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {int t_kpc; } ;


 int TASK_KPC_FORCED_ALL_CTRS ;
 int assert (TYPE_1__*) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

__attribute__((used)) static void
kpc_task_set_forced_all_ctrs(task_t task, boolean_t state)
{
 assert(task);

 task_lock(task);
 if (state)
  task->t_kpc |= TASK_KPC_FORCED_ALL_CTRS;
 else
  task->t_kpc &= ~TASK_KPC_FORCED_ALL_CTRS;
 task_unlock(task);
}
