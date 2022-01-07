
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Task ;
typedef int List ;


 int AnyConnectionAccessedPlacements () ;
 int Assert (int) ;
 int EnableLocalExecution ;
 scalar_t__ InCoordinatedTransaction () ;
 scalar_t__ IsMultiStatementTransaction () ;
 scalar_t__ LocalExecutionHappened ;
 scalar_t__ TaskAccessesLocalNode (int *) ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;

bool
ShouldExecuteTasksLocally(List *taskList)
{
 bool singleTask = 0;

 if (!EnableLocalExecution)
 {
  return 0;
 }

 if (LocalExecutionHappened)
 {
  Assert(IsMultiStatementTransaction() || InCoordinatedTransaction());







  return 1;
 }

 singleTask = (list_length(taskList) == 1);
 if (singleTask && TaskAccessesLocalNode((Task *) linitial(taskList)))
 {
  return !AnyConnectionAccessedPlacements();
 }

 if (!singleTask)
 {






  Assert(!LocalExecutionHappened);

  return 0;
 }

 return 0;
}
