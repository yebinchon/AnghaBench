
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* task_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {scalar_t__ low_mem_privileged_listener; } ;


 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

int
task_low_mem_privileged_listener(task_t task, boolean_t new_value, boolean_t *old_value)
{
 if (old_value != ((void*)0)) {
  *old_value = (boolean_t)task->low_mem_privileged_listener;
 } else {
  task_lock(task);
  task->low_mem_privileged_listener = (uint32_t)new_value;
  task_unlock(task);
 }

 return 0;
}
