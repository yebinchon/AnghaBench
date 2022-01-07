
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int boolean_t ;
struct TYPE_4__ {int t_kpc; } ;


 int FALSE ;
 int TASK_KPC_FORCED_ALL_CTRS ;
 int TRUE ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static boolean_t
kpc_task_get_forced_all_ctrs(task_t task)
{
 assert(task);
 return task->t_kpc & TASK_KPC_FORCED_ALL_CTRS ? TRUE : FALSE;
}
