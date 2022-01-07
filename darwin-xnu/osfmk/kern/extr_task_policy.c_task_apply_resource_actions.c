
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct TYPE_5__ {int applied_ru_cpu_ext; int policy_ru_cpu_ext; void* bsd_info; } ;






 int TASK_POLICY_RESOURCE_ATTRIBUTE_NONE ;


 int proc_apply_resource_actions (void*,int const,int) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

__attribute__((used)) static int
task_apply_resource_actions(task_t task, int type)
{
 int action = TASK_POLICY_RESOURCE_ATTRIBUTE_NONE;
 void * bsdinfo = ((void*)0);

 switch (type) {
  case 133:
   break;
  case 128:
  case 129:
  case 132:
  case 131:
  case 130:
   return(0);

  default:
   return(1);
 };


 task_lock(task);

 if (task->applied_ru_cpu_ext == TASK_POLICY_RESOURCE_ATTRIBUTE_NONE) {

  task->applied_ru_cpu_ext = task->policy_ru_cpu_ext;
  action = task->applied_ru_cpu_ext;
 } else {
  action = task->applied_ru_cpu_ext;
 }

 if (action != TASK_POLICY_RESOURCE_ATTRIBUTE_NONE) {
  bsdinfo = task->bsd_info;
  task_unlock(task);
  proc_apply_resource_actions(bsdinfo, 133, action);
 } else
  task_unlock(task);

 return(0);
}
