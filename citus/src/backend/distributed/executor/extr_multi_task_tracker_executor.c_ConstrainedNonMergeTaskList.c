
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ TaskType ;
struct TYPE_4__ {scalar_t__ taskType; int * dependedTaskList; } ;
typedef TYPE_1__ Task ;
typedef int List ;


 int Assert (int ) ;
 scalar_t__ MAP_TASK ;
 int * NIL ;
 scalar_t__ SQL_TASK ;
 int * list_concat (int *,int *) ;
 int * list_make1 (TYPE_1__*) ;

__attribute__((used)) static List *
ConstrainedNonMergeTaskList(List *taskAndExecutionList, Task *task)
{
 List *constrainedTaskList = NIL;
 Task *upstreamTask = ((void*)0);
 List *dependedTaskList = NIL;

 TaskType taskType = task->taskType;
 if (taskType == SQL_TASK || taskType == MAP_TASK)
 {
  upstreamTask = task;
  dependedTaskList = upstreamTask->dependedTaskList;
 }
 Assert(upstreamTask != ((void*)0));

 constrainedTaskList = list_make1(upstreamTask);
 constrainedTaskList = list_concat(constrainedTaskList, dependedTaskList);

 return constrainedTaskList;
}
