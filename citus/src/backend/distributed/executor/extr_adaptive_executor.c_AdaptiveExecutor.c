
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef int TupleDesc ;
struct TYPE_25__ {int tuplestorestate; int finishedRemoteScan; TYPE_3__* distributedPlan; } ;
struct TYPE_24__ {scalar_t__ rowsProcessed; int localTaskList; int tasksToExecute; } ;
struct TYPE_23__ {scalar_t__ modLevel; scalar_t__ targetRelationId; scalar_t__ hasReturning; TYPE_1__* workerJob; } ;
struct TYPE_22__ {scalar_t__ es_processed; int es_param_list_info; } ;
struct TYPE_21__ {int * taskList; } ;
typedef int ParamListInfo ;
typedef int List ;
typedef TYPE_1__ Job ;
typedef TYPE_2__ EState ;
typedef TYPE_3__ DistributedPlan ;
typedef TYPE_4__ DistributedExecution ;
typedef TYPE_5__ CitusScanState ;


 int AdjustDistributedExecutionAfterLocalExecution (TYPE_4__*) ;
 int Assert (int) ;
 TYPE_4__* CreateDistributedExecution (scalar_t__,int *,scalar_t__,int ,int ,int ,int) ;
 scalar_t__ DISTRIBUTE_BY_NONE ;
 int ExecuteSubPlans (TYPE_3__*) ;
 int FinishDistributedExecution (TYPE_4__*) ;
 scalar_t__ InvalidOid ;
 int LockPartitionsForDistributedPlan (TYPE_3__*) ;
 int MaxAdaptiveExecutorPoolSize ;
 scalar_t__ MultiShardConnectionType ;
 scalar_t__ PartitionMethod (scalar_t__) ;
 scalar_t__ ROW_MODIFY_READONLY ;
 int RunDistributedExecution (TYPE_4__*) ;
 int RunLocalExecution (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ SEQUENTIAL_CONNECTION ;
 TYPE_2__* ScanStateGetExecutorState (TYPE_5__*) ;
 int ScanStateGetTupleDescriptor (TYPE_5__*) ;
 int SequentialRunDistributedExecution (TYPE_4__*) ;
 scalar_t__ ShouldRunTasksSequentially (int ) ;
 scalar_t__ SortReturning ;
 int SortTupleStore (TYPE_5__*) ;
 int StartDistributedExecution (TYPE_4__*) ;
 scalar_t__ list_length (int ) ;
 int tuplestore_begin_heap (int,int,int ) ;
 int work_mem ;

TupleTableSlot *
AdaptiveExecutor(CitusScanState *scanState)
{
 TupleTableSlot *resultSlot = ((void*)0);

 DistributedPlan *distributedPlan = scanState->distributedPlan;
 DistributedExecution *execution = ((void*)0);
 EState *executorState = ScanStateGetExecutorState(scanState);
 ParamListInfo paramListInfo = executorState->es_param_list_info;
 TupleDesc tupleDescriptor = ScanStateGetTupleDescriptor(scanState);
 bool randomAccess = 1;
 bool interTransactions = 0;
 int targetPoolSize = MaxAdaptiveExecutorPoolSize;


 Job *job = distributedPlan->workerJob;
 List *taskList = job->taskList;


 Assert(!scanState->finishedRemoteScan);






 LockPartitionsForDistributedPlan(distributedPlan);

 ExecuteSubPlans(distributedPlan);

 if (MultiShardConnectionType == SEQUENTIAL_CONNECTION)
 {

  targetPoolSize = 1;
 }

 scanState->tuplestorestate =
  tuplestore_begin_heap(randomAccess, interTransactions, work_mem);

 execution = CreateDistributedExecution(distributedPlan->modLevel, taskList,
             distributedPlan->hasReturning, paramListInfo,
             tupleDescriptor,
             scanState->tuplestorestate, targetPoolSize);





 StartDistributedExecution(execution);


 if (list_length(execution->localTaskList) > 0)
 {
  RunLocalExecution(scanState, execution);


  AdjustDistributedExecutionAfterLocalExecution(execution);
 }

 if (ShouldRunTasksSequentially(execution->tasksToExecute))
 {
  SequentialRunDistributedExecution(execution);
 }
 else
 {
  RunDistributedExecution(execution);
 }

 if (distributedPlan->modLevel != ROW_MODIFY_READONLY)
 {
  if (list_length(execution->localTaskList) == 0)
  {
   Assert(executorState->es_processed == 0);

   executorState->es_processed = execution->rowsProcessed;
  }
  else if (distributedPlan->targetRelationId != InvalidOid &&
     PartitionMethod(distributedPlan->targetRelationId) != DISTRIBUTE_BY_NONE)
  {





   executorState->es_processed += execution->rowsProcessed;
  }
 }

 FinishDistributedExecution(execution);

 if (SortReturning && distributedPlan->hasReturning)
 {
  SortTupleStore(scanState);
 }

 return resultSlot;
}
