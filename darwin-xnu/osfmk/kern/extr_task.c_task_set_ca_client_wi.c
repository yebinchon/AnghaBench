
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {int t_flags; } ;


 int TF_CA_CLIENT_WI ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

bool
task_set_ca_client_wi(
  task_t task,
  boolean_t set_or_clear)
{
 bool ret = 1;
 task_lock(task);
 if (set_or_clear) {

  if (task->t_flags & TF_CA_CLIENT_WI)
   ret = 0;
  else
   task->t_flags |= TF_CA_CLIENT_WI;
 } else {
  task->t_flags &= ~TF_CA_CLIENT_WI;
 }
 task_unlock(task);
 return ret;
}
