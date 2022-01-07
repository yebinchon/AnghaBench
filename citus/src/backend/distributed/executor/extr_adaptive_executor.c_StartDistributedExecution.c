
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int errorOnAnyFailure; int targetPoolSize; int isTransaction; int * tasksToExecute; } ;
typedef int List ;
typedef TYPE_1__ DistributedExecution ;


 int AcquireExecutorShardLocksForExecution (TYPE_1__*) ;
 int BeginOrContinueCoordinatedTransaction () ;
 scalar_t__ COMMIT_PROTOCOL_2PC ;
 scalar_t__ COMMIT_PROTOCOL_BARE ;
 int CoordinatedTransactionUse2PC () ;
 scalar_t__ DistributedExecutionModifiesDatabase (TYPE_1__*) ;
 scalar_t__ DistributedExecutionRequiresRollback (TYPE_1__*) ;
 int InCoordinatedTransaction () ;
 scalar_t__ LocalExecutionHappened ;
 scalar_t__ MultiShardCommitProtocol ;
 int RecordParallelRelationAccessForTaskList (int *) ;
 scalar_t__ TaskListRequires2PC (int *) ;
 int list_length (int *) ;

void
StartDistributedExecution(DistributedExecution *execution)
{
 List *taskList = execution->tasksToExecute;

 if (MultiShardCommitProtocol != COMMIT_PROTOCOL_BARE)
 {
  if (DistributedExecutionRequiresRollback(execution) || LocalExecutionHappened)
  {
   BeginOrContinueCoordinatedTransaction();

   if (TaskListRequires2PC(taskList) || LocalExecutionHappened)
   {






    CoordinatedTransactionUse2PC();

    execution->errorOnAnyFailure = 1;
   }
   else if (MultiShardCommitProtocol != COMMIT_PROTOCOL_2PC &&
      list_length(taskList) > 1 &&
      DistributedExecutionModifiesDatabase(execution))
   {




    execution->errorOnAnyFailure = 1;
   }
  }
 }
 else
 {




  execution->errorOnAnyFailure = 1;
 }
 AcquireExecutorShardLocksForExecution(execution);





 execution->isTransaction = InCoordinatedTransaction();
 if (execution->targetPoolSize > 1)
 {
  RecordParallelRelationAccessForTaskList(taskList);
 }
}
