
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_22__ {int requiresMasterEvaluation; int jobId; void* taskList; int * partitionKeyValue; } ;
struct TYPE_21__ {int relationRestrictionContext; } ;
struct TYPE_20__ {scalar_t__ commandType; } ;
struct TYPE_19__ {scalar_t__ rtekind; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef TYPE_2__ Query ;
typedef TYPE_3__ PlannerRestrictionContext ;
typedef int List ;
typedef TYPE_4__ Job ;
typedef int DeferredErrorMessage ;
typedef int Const ;


 scalar_t__ CMD_SELECT ;
 TYPE_4__* CreateJob (TYPE_2__*) ;
 TYPE_1__* GetUpdateOrDeleteRTE (TYPE_2__*) ;
 scalar_t__ INVALID_SHARD_ID ;
 int MODIFY_TASK ;
 void* NIL ;
 int * PlanRouterQuery (TYPE_2__*,TYPE_3__*,int **,scalar_t__*,int **,int **,int,int*,int **) ;
 void* QueryPushdownSqlTaskList (TYPE_2__*,int ,int ,int *,int ,int) ;
 scalar_t__ RTE_SUBQUERY ;
 int ReorderTaskPlacementsByTaskAssignmentPolicy (TYPE_4__*,int ,int *) ;
 int RequiresMasterEvaluation (TYPE_2__*) ;
 void* SingleShardModifyTaskList (TYPE_2__*,int ,int *,int *,scalar_t__) ;
 void* SingleShardSelectTaskList (TYPE_2__*,int ,int *,int *,scalar_t__) ;
 int TaskAssignmentPolicy ;

__attribute__((used)) static Job *
RouterJob(Query *originalQuery, PlannerRestrictionContext *plannerRestrictionContext,
    DeferredErrorMessage **planningError)
{
 Job *job = ((void*)0);
 uint64 shardId = INVALID_SHARD_ID;
 List *placementList = NIL;
 List *relationShardList = NIL;
 List *prunedShardIntervalListList = NIL;
 bool replacePrunedQueryWithDummy = 0;
 bool requiresMasterEvaluation = 0;
 RangeTblEntry *updateOrDeleteRTE = ((void*)0);
 bool isMultiShardModifyQuery = 0;
 Const *partitionKeyValue = ((void*)0);


 replacePrunedQueryWithDummy = 1;


 requiresMasterEvaluation = RequiresMasterEvaluation(originalQuery);

 (*planningError) = PlanRouterQuery(originalQuery, plannerRestrictionContext,
            &placementList, &shardId, &relationShardList,
            &prunedShardIntervalListList,
            replacePrunedQueryWithDummy,
            &isMultiShardModifyQuery,
            &partitionKeyValue);
 if (*planningError)
 {
  return ((void*)0);
 }

 job = CreateJob(originalQuery);
 job->partitionKeyValue = partitionKeyValue;

 updateOrDeleteRTE = GetUpdateOrDeleteRTE(originalQuery);
 if (updateOrDeleteRTE != ((void*)0) && updateOrDeleteRTE->rtekind == RTE_SUBQUERY)
 {
  job->taskList = NIL;
  return job;
 }

 if (originalQuery->commandType == CMD_SELECT)
 {
  job->taskList = SingleShardSelectTaskList(originalQuery, job->jobId,
              relationShardList, placementList,
              shardId);
  if (shardId != INVALID_SHARD_ID)
  {
   ReorderTaskPlacementsByTaskAssignmentPolicy(job, TaskAssignmentPolicy,
              placementList);
  }
 }
 else if (isMultiShardModifyQuery)
 {
  job->taskList = QueryPushdownSqlTaskList(originalQuery, job->jobId,
             plannerRestrictionContext->
             relationRestrictionContext,
             prunedShardIntervalListList,
             MODIFY_TASK,
             requiresMasterEvaluation);
 }
 else
 {
  job->taskList = SingleShardModifyTaskList(originalQuery, job->jobId,
              relationShardList, placementList,
              shardId);
 }

 job->requiresMasterEvaluation = requiresMasterEvaluation;
 return job;
}
