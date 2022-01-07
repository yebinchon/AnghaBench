
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {int t_flags; } ;


 int TF_DARKWAKE_MODE ;
 int assert (TYPE_1__*) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

void
task_set_darkwake_mode(task_t task, boolean_t set_mode)
{
 assert(task);

 task_lock(task);

 if (set_mode) {
  task->t_flags |= TF_DARKWAKE_MODE;
 } else {
  task->t_flags &= ~(TF_DARKWAKE_MODE);
 }

 task_unlock(task);
}
