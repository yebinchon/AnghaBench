
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TaskType ;


 scalar_t__ ROUTER_TASK ;
 scalar_t__ SQL_TASK ;

bool
ReadOnlyTask(TaskType taskType)
{
 if (taskType == ROUTER_TASK || taskType == SQL_TASK)
 {





  return 1;
 }

 return 0;
}
