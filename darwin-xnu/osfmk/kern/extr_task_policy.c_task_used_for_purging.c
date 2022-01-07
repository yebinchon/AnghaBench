
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ purged_memory_critical; scalar_t__ purged_memory_warn; } ;


 int FALSE ;
 int TRUE ;
 int kVMPressureCritical ;
 int kVMPressureWarning ;

boolean_t
task_used_for_purging(task_t task, int pressurelevel)
{
 if (task == ((void*)0)) {
  return FALSE;
 }

 if (pressurelevel == kVMPressureWarning)
  return (task->purged_memory_warn ? TRUE : FALSE);
 else if (pressurelevel == kVMPressureCritical)
  return (task->purged_memory_critical ? TRUE : FALSE);
 else
  return TRUE;
}
