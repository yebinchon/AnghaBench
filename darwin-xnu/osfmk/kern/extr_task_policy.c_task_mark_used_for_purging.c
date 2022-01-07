
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct TYPE_3__ {int purged_memory_warn; int purged_memory_critical; } ;


 int kVMPressureCritical ;
 int kVMPressureWarning ;

void
task_mark_used_for_purging(task_t task, int pressurelevel)
{
 if (task == ((void*)0)) {
  return;
 }

 if (pressurelevel == kVMPressureWarning)
  task->purged_memory_warn = 1;
 else if (pressurelevel == kVMPressureCritical)
  task->purged_memory_critical = 1;
}
