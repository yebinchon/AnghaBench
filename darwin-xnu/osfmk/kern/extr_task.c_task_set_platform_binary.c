
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {int t_flags; } ;


 int TF_PLATFORM ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

void
task_set_platform_binary(
  task_t task,
  boolean_t is_platform)
{
 task_lock(task);
 if (is_platform) {
  task->t_flags |= TF_PLATFORM;
 } else {
  task->t_flags &= ~(TF_PLATFORM);
 }
 task_unlock(task);
}
