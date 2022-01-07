
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_11__ {int finishedRemoteScan; TYPE_2__* distributedPlan; } ;
struct TYPE_10__ {int relationIdList; TYPE_1__* workerJob; } ;
struct TYPE_9__ {int * jobQuery; } ;
typedef int Query ;
typedef int Node ;
typedef TYPE_1__ Job ;
typedef TYPE_2__ DistributedPlan ;
typedef int CustomScanState ;
typedef TYPE_3__ CitusScanState ;


 int AccessShareLock ;
 scalar_t__ ContainsReadIntermediateResultFunction (int *) ;
 int DisableLocalExecution () ;
 int ERROR ;
 int ErrorIfLocalExecutionHappened () ;
 int LoadTuplesIntoTupleStore (TYPE_3__*,TYPE_1__*) ;
 int LockPartitionsInRelationList (int ,int ) ;
 int MultiTaskTrackerExecute (TYPE_1__*) ;
 int PrepareMasterJobDirectory (TYPE_1__*) ;
 int * ReturnTupleFromTuplestore (TYPE_3__*) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

TupleTableSlot *
TaskTrackerExecScan(CustomScanState *node)
{
 CitusScanState *scanState = (CitusScanState *) node;
 TupleTableSlot *resultSlot = ((void*)0);

 if (!scanState->finishedRemoteScan)
 {
  DistributedPlan *distributedPlan = scanState->distributedPlan;
  Job *workerJob = distributedPlan->workerJob;
  Query *jobQuery = workerJob->jobQuery;

  ErrorIfLocalExecutionHappened();
  DisableLocalExecution();

  if (ContainsReadIntermediateResultFunction((Node *) jobQuery))
  {
   ereport(ERROR, (errmsg("Complex subqueries and CTEs are not supported when "
           "task_executor_type is set to 'task-tracker'")));
  }


  LockPartitionsInRelationList(distributedPlan->relationIdList, AccessShareLock);

  PrepareMasterJobDirectory(workerJob);
  MultiTaskTrackerExecute(workerJob);

  LoadTuplesIntoTupleStore(scanState, workerJob);

  scanState->finishedRemoteScan = 1;
 }

 resultSlot = ReturnTupleFromTuplestore(scanState);

 return resultSlot;
}
