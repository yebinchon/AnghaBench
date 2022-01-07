
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef TYPE_1__* task_t ;
struct TYPE_7__ {int policy_ru_cpu_ext; int policy_ru_cpu; } ;


 int EINVAL ;
 int ENOTSUP ;






 int TASK_RUSECPU_FLAGS_DEADLINE ;
 int TASK_RUSECPU_FLAGS_PERTHR_LIMIT ;
 int TASK_RUSECPU_FLAGS_PROC_LIMIT ;
 TYPE_1__* current_task () ;
 int task_lock (TYPE_1__*) ;
 int task_set_cpuusage (TYPE_1__*,int ,int ,int ,int,int) ;
 int task_unlock (TYPE_1__*) ;

int
proc_set_task_ruse_cpu(task_t task, uint32_t policy, uint8_t percentage, uint64_t interval, uint64_t deadline,
 int cpumon_entitled)
{
 int error = 0;
 int scope;




  switch (policy) {

  case 133:
 case 128:
  if (deadline != 0)
   return (ENOTSUP);
  scope = TASK_RUSECPU_FLAGS_PROC_LIMIT;
  break;
 case 130:
 case 129:
 case 131:
  if (percentage != 0)
   return (ENOTSUP);
  scope = TASK_RUSECPU_FLAGS_DEADLINE;
  break;
  case 132:
  if (deadline != 0)
   return (ENOTSUP);
  scope = TASK_RUSECPU_FLAGS_PERTHR_LIMIT;



  break;
 default:
  return (EINVAL);
 }

 task_lock(task);
 if (task != current_task()) {
  task->policy_ru_cpu_ext = policy;
 } else {
  task->policy_ru_cpu = policy;
 }
 error = task_set_cpuusage(task, percentage, interval, deadline, scope, cpumon_entitled);
 task_unlock(task);
 return(error);
}
