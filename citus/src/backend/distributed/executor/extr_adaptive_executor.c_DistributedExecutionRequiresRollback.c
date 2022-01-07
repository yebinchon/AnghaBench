
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ relationRowLockList; scalar_t__ anchorShardId; int * taskPlacementList; int taskType; } ;
typedef TYPE_1__ Task ;
struct TYPE_5__ {int * tasksToExecute; } ;
typedef int List ;
typedef TYPE_2__ DistributedExecution ;


 scalar_t__ COMMIT_PROTOCOL_2PC ;
 scalar_t__ COMMIT_PROTOCOL_BARE ;
 scalar_t__ INVALID_SHARD_ID ;
 scalar_t__ IsMultiStatementTransaction () ;
 int IsTransactionBlock () ;
 scalar_t__ MultiShardCommitProtocol ;
 scalar_t__ NIL ;
 scalar_t__ ReadOnlyTask (int ) ;
 scalar_t__ ReferenceTableShardId (scalar_t__) ;
 scalar_t__ SelectOpensTransactionBlock ;
 scalar_t__ SingleShardCommitProtocol ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;

__attribute__((used)) static bool
DistributedExecutionRequiresRollback(DistributedExecution *execution)
{
 List *taskList = execution->tasksToExecute;
 int taskCount = list_length(taskList);
 Task *task = ((void*)0);
 bool selectForUpdate = 0;

 if (MultiShardCommitProtocol == COMMIT_PROTOCOL_BARE)
 {
  return 0;
 }

 if (taskCount == 0)
 {
  return 0;
 }

 task = (Task *) linitial(taskList);

 selectForUpdate = task->relationRowLockList != NIL;
 if (selectForUpdate)
 {




  return IsTransactionBlock();
 }

 if (ReadOnlyTask(task->taskType))
 {
  return SelectOpensTransactionBlock && IsTransactionBlock();
 }

 if (IsMultiStatementTransaction())
 {
  return 1;
 }

 if (list_length(taskList) > 1)
 {
  return 1;
 }

 if (list_length(task->taskPlacementList) > 1)
 {
  if (SingleShardCommitProtocol == COMMIT_PROTOCOL_2PC)
  {





   return 1;
  }
  if (task->anchorShardId != INVALID_SHARD_ID && ReferenceTableShardId(
    task->anchorShardId))
  {
   return 1;
  }





  return 0;
 }

 return 0;
}
