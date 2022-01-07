
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct TYPE_3__ {int low_mem_notified_warn; int low_mem_notified_critical; } ;


 int kVMPressureCritical ;
 int kVMPressureWarning ;

void
task_mark_has_been_notified(task_t task, int pressurelevel)
{
 if (task == ((void*)0)) {
  return;
 }

 if (pressurelevel == kVMPressureWarning)
  task->low_mem_notified_warn = 1;
 else if (pressurelevel == kVMPressureCritical)
  task->low_mem_notified_critical = 1;
}
