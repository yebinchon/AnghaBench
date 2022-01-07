
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct TYPE_7__ {int applied_ru_cpu; int applied_ru_cpu_ext; void* bsd_info; void* policy_ru_cpu; void* policy_ru_cpu_ext; } ;


 int TASK_POLICY_CPU_RESOURCE_USAGE ;
 void* TASK_POLICY_RESOURCE_ATTRIBUTE_DEFAULT ;
 int TASK_POLICY_RESOURCE_ATTRIBUTE_NONE ;
 TYPE_1__* current_task () ;
 int proc_restore_resource_actions (void*,int ,int) ;
 int task_clear_cpuusage_locked (TYPE_1__*,int) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

int
proc_clear_task_ruse_cpu(task_t task, int cpumon_entitled)
{
 int error = 0;
 int action;
 void * bsdinfo = ((void*)0);

 task_lock(task);
 if (task != current_task()) {
  task->policy_ru_cpu_ext = TASK_POLICY_RESOURCE_ATTRIBUTE_DEFAULT;
 } else {
  task->policy_ru_cpu = TASK_POLICY_RESOURCE_ATTRIBUTE_DEFAULT;
 }

 error = task_clear_cpuusage_locked(task, cpumon_entitled);
 if (error != 0)
  goto out;

 action = task->applied_ru_cpu;
 if (task->applied_ru_cpu_ext != TASK_POLICY_RESOURCE_ATTRIBUTE_NONE) {

  task->applied_ru_cpu_ext = TASK_POLICY_RESOURCE_ATTRIBUTE_NONE;
 }
 if (action != TASK_POLICY_RESOURCE_ATTRIBUTE_NONE) {
  bsdinfo = task->bsd_info;
  task_unlock(task);
  proc_restore_resource_actions(bsdinfo, TASK_POLICY_CPU_RESOURCE_USAGE, action);
  goto out1;
 }

out:
 task_unlock(task);
out1:
 return(error);

}
