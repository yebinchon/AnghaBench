
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int requiresMasterEvaluation; int deferredPruning; int * partitionKeyValue; int * taskList; } ;
typedef int Query ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__ Job ;
typedef int DeferredErrorMessage ;
typedef int Const ;


 int CanShardPrune (int ,int *) ;
 TYPE_1__* CreateJob (int *) ;
 int ExtractFirstDistributedTableId (int *) ;
 int * ExtractInsertPartitionKeyValue (int *) ;
 int IsMultiRowInsert (int *) ;
 int * NIL ;
 int NormalizeMultiRowInsertTargetList (int *) ;
 int RebuildQueryStrings (int *,int *) ;
 int RequiresMasterEvaluation (int *) ;
 int * RouterInsertTaskList (int *,int **) ;

__attribute__((used)) static Job *
RouterInsertJob(Query *originalQuery, Query *query, DeferredErrorMessage **planningError)
{
 Oid distributedTableId = ExtractFirstDistributedTableId(query);
 List *taskList = NIL;
 Job *job = ((void*)0);
 bool requiresMasterEvaluation = 0;
 bool deferredPruning = 0;
 Const *partitionKeyValue = ((void*)0);

 bool isMultiRowInsert = IsMultiRowInsert(query);
 if (isMultiRowInsert)
 {

  NormalizeMultiRowInsertTargetList(originalQuery);
 }

 if (isMultiRowInsert || !CanShardPrune(distributedTableId, query))
 {
  taskList = NIL;
  deferredPruning = 1;


  requiresMasterEvaluation = 1;
 }
 else
 {
  taskList = RouterInsertTaskList(query, planningError);
  if (*planningError)
  {
   return ((void*)0);
  }


  requiresMasterEvaluation = RequiresMasterEvaluation(originalQuery);
 }

 if (!requiresMasterEvaluation)
 {

  RebuildQueryStrings(originalQuery, taskList);


  partitionKeyValue = ExtractInsertPartitionKeyValue(originalQuery);
 }

 job = CreateJob(originalQuery);
 job->taskList = taskList;
 job->requiresMasterEvaluation = requiresMasterEvaluation;
 job->deferredPruning = deferredPruning;
 job->partitionKeyValue = partitionKeyValue;

 return job;
}
