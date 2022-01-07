
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ failureCount; } ;
typedef TYPE_1__ TaskExecution ;


 scalar_t__ MAX_TASK_EXECUTION_FAILURES ;

bool
TaskExecutionFailed(TaskExecution *taskExecution)
{
 if (taskExecution->failureCount >= MAX_TASK_EXECUTION_FAILURES)
 {
  return 1;
 }

 return 0;
}
