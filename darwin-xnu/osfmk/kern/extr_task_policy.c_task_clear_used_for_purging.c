
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct TYPE_3__ {scalar_t__ purged_memory_critical; scalar_t__ purged_memory_warn; } ;



void
task_clear_used_for_purging(task_t task)
{
 if (task == ((void*)0)) {
  return;
 }

 task->purged_memory_warn = 0;
 task->purged_memory_critical = 0;
}
