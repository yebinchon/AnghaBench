
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ TaskType ;
struct TYPE_4__ {scalar_t__ taskType; int dependedTaskList; } ;
typedef TYPE_1__ Task ;
typedef int List ;


 int Assert (int) ;
 scalar_t__ MAP_OUTPUT_FETCH_TASK ;
 scalar_t__ MAP_TASK ;
 scalar_t__ MERGE_TASK ;
 int * MergeTaskList (int ) ;
 int * NIL ;
 scalar_t__ SQL_TASK ;
 int * UpstreamDependencyList (int *,TYPE_1__*) ;
 scalar_t__ linitial (int *) ;

__attribute__((used)) static List *
ConstrainedMergeTaskList(List *taskAndExecutionList, Task *task)
{
 List *constrainedMergeTaskList = NIL;
 TaskType taskType = task->taskType;






 if (taskType == SQL_TASK || taskType == MAP_TASK)
 {
  constrainedMergeTaskList = MergeTaskList(task->dependedTaskList);
 }
 else if (taskType == MAP_OUTPUT_FETCH_TASK)
 {
  List *taskList = UpstreamDependencyList(taskAndExecutionList, task);
  Task *mergeTask = (Task *) linitial(taskList);





  List *upstreamTaskList = UpstreamDependencyList(taskAndExecutionList, mergeTask);
  Task *upstreamTask = (Task *) linitial(upstreamTaskList);

  constrainedMergeTaskList = MergeTaskList(upstreamTask->dependedTaskList);
 }
 else if (taskType == MERGE_TASK)
 {
  Task *upstreamTask = ((void*)0);
  List *upstreamTaskList = UpstreamDependencyList(taskAndExecutionList, task);






  Assert(upstreamTaskList != NIL);
  upstreamTask = (Task *) linitial(upstreamTaskList);

  constrainedMergeTaskList = MergeTaskList(upstreamTask->dependedTaskList);
 }

 return constrainedMergeTaskList;
}
