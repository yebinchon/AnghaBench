
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ taskStatus; } ;
typedef TYPE_1__ WorkerTask ;
typedef scalar_t__ TaskStatus ;


 scalar_t__ TASK_ASSIGNED ;

__attribute__((used)) static bool
SchedulableTask(WorkerTask *workerTask)
{
 TaskStatus currentStatus = workerTask->taskStatus;
 if (currentStatus == TASK_ASSIGNED)
 {
  return 1;
 }

 return 0;
}
