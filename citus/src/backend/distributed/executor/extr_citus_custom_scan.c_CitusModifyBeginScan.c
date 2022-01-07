
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {TYPE_5__* state; } ;
struct TYPE_12__ {TYPE_3__ ps; } ;
struct TYPE_13__ {TYPE_1__ ss; } ;
struct TYPE_18__ {TYPE_2__ customScanState; TYPE_6__* distributedPlan; } ;
struct TYPE_17__ {int relationIdList; TYPE_4__* workerJob; } ;
struct TYPE_16__ {int * es_param_list_info; } ;
struct TYPE_15__ {int * taskList; int partitionKeyValue; scalar_t__ deferredPruning; scalar_t__ requiresMasterEvaluation; int * jobQuery; } ;
typedef int Query ;
typedef TYPE_3__ PlanState ;
typedef int List ;
typedef TYPE_4__ Job ;
typedef TYPE_5__ EState ;
typedef TYPE_6__ DistributedPlan ;
typedef int DeferredErrorMessage ;
typedef int CustomScanState ;
typedef TYPE_7__ CitusScanState ;


 int AccessShareLock ;
 int AcquireMetadataLocks (int *) ;
 int ERROR ;
 int ExecuteMasterEvaluableFunctions (int *,TYPE_3__*) ;
 int ExtractInsertPartitionKeyValue (int *) ;
 int * FirstReplicaAssignTaskList (int *) ;
 int LockPartitionsInRelationList (int ,int ) ;
 int * NIL ;
 int RaiseDeferredError (int *,int ) ;
 int RebuildQueryStrings (int *,int *) ;
 int * RouterInsertTaskList (int *,int **) ;
 TYPE_6__* copyObject (TYPE_6__*) ;

__attribute__((used)) static void
CitusModifyBeginScan(CustomScanState *node, EState *estate, int eflags)
{
 CitusScanState *scanState = (CitusScanState *) node;
 DistributedPlan *distributedPlan = ((void*)0);
 Job *workerJob = ((void*)0);
 Query *jobQuery = ((void*)0);
 List *taskList = NIL;






 distributedPlan = scanState->distributedPlan = copyObject(scanState->distributedPlan);

 workerJob = distributedPlan->workerJob;
 jobQuery = workerJob->jobQuery;
 taskList = workerJob->taskList;

 if (workerJob->requiresMasterEvaluation)
 {
  PlanState *planState = &(scanState->customScanState.ss.ps);
  EState *executorState = planState->state;

  ExecuteMasterEvaluableFunctions(jobQuery, planState);







  executorState->es_param_list_info = ((void*)0);

  if (workerJob->deferredPruning)
  {
   DeferredErrorMessage *planningError = ((void*)0);


   taskList = RouterInsertTaskList(jobQuery, &planningError);

   if (planningError != ((void*)0))
   {
    RaiseDeferredError(planningError, ERROR);
   }

   workerJob->taskList = taskList;
   workerJob->partitionKeyValue = ExtractInsertPartitionKeyValue(jobQuery);
  }

  RebuildQueryStrings(jobQuery, taskList);
 }


 AcquireMetadataLocks(taskList);





 LockPartitionsInRelationList(distributedPlan->relationIdList, AccessShareLock);


 workerJob->taskList = FirstReplicaAssignTaskList(taskList);
}
