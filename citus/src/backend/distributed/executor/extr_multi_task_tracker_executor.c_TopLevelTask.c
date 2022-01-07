
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ taskType; } ;
typedef TYPE_1__ Task ;


 scalar_t__ SQL_TASK ;

__attribute__((used)) static bool
TopLevelTask(Task *task)
{
 bool topLevelTask = 0;





 if (task->taskType == SQL_TASK)
 {
  topLevelTask = 1;
 }

 return topLevelTask;
}
