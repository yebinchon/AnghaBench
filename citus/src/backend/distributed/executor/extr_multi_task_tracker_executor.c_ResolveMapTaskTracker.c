
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TaskTracker ;
typedef int TaskExecution ;
struct TYPE_4__ {scalar_t__ taskType; scalar_t__ dependedTaskList; int * taskExecution; } ;
typedef TYPE_1__ Task ;
typedef int HTAB ;


 int Assert (int) ;
 scalar_t__ MAP_OUTPUT_FETCH_TASK ;
 scalar_t__ NIL ;
 int * ResolveTaskTracker (int *,TYPE_1__*,int *) ;
 scalar_t__ linitial (scalar_t__) ;

__attribute__((used)) static TaskTracker *
ResolveMapTaskTracker(HTAB *trackerHash, Task *task, TaskExecution *taskExecution)
{
 TaskTracker *mapTaskTracker = ((void*)0);
 Task *mapTask = ((void*)0);
 TaskExecution *mapTaskExecution = ((void*)0);


 if (task->taskType != MAP_OUTPUT_FETCH_TASK)
 {
  return ((void*)0);
 }

 Assert(task->dependedTaskList != NIL);
 mapTask = (Task *) linitial(task->dependedTaskList);
 mapTaskExecution = mapTask->taskExecution;

 mapTaskTracker = ResolveTaskTracker(trackerHash, mapTask, mapTaskExecution);
 Assert(mapTaskTracker != ((void*)0));

 return mapTaskTracker;
}
