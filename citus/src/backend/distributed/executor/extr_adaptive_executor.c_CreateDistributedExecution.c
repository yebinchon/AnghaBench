
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Tuplestorestate ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_7__ {int hasReturning; int targetPoolSize; int raiseInterrupts; int connectionSetChanged; int waitFlagsChanged; char** columnArray; void* remoteTaskList; void* localTaskList; int * attributeInputMetadata; scalar_t__ rowsProcessed; void* unfinishedTaskCount; void* totalTaskCount; void* sessionList; void* workerList; int * tupleStore; TYPE_1__* tupleDescriptor; int paramListInfo; int * executionStats; int * tasksToExecute; int modLevel; } ;
struct TYPE_6__ {int natts; } ;
typedef int RowModifyLevel ;
typedef int ParamListInfo ;
typedef int List ;
typedef int DistributedExecutionStats ;
typedef TYPE_2__ DistributedExecution ;


 int ExtractLocalAndRemoteTasks (int,int *,void**,void**) ;
 void* NIL ;
 scalar_t__ ShouldExecuteTasksLocally (int *) ;
 int TaskListModifiesDatabase (int ,int *) ;
 int * TupleDescGetAttInMetadata (TYPE_1__*) ;
 void* list_length (int *) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static DistributedExecution *
CreateDistributedExecution(RowModifyLevel modLevel, List *taskList, bool hasReturning,
         ParamListInfo paramListInfo, TupleDesc tupleDescriptor,
         Tuplestorestate *tupleStore, int targetPoolSize)
{
 DistributedExecution *execution =
  (DistributedExecution *) palloc0(sizeof(DistributedExecution));

 execution->modLevel = modLevel;
 execution->tasksToExecute = taskList;
 execution->hasReturning = hasReturning;

 execution->localTaskList = NIL;
 execution->remoteTaskList = NIL;

 execution->executionStats =
  (DistributedExecutionStats *) palloc0(sizeof(DistributedExecutionStats));
 execution->paramListInfo = paramListInfo;
 execution->tupleDescriptor = tupleDescriptor;
 execution->tupleStore = tupleStore;

 execution->workerList = NIL;
 execution->sessionList = NIL;
 execution->targetPoolSize = targetPoolSize;

 execution->totalTaskCount = list_length(taskList);
 execution->unfinishedTaskCount = list_length(taskList);
 execution->rowsProcessed = 0;

 execution->raiseInterrupts = 1;

 execution->connectionSetChanged = 0;
 execution->waitFlagsChanged = 0;


 if (tupleDescriptor != ((void*)0))
 {
  execution->attributeInputMetadata = TupleDescGetAttInMetadata(tupleDescriptor);
  execution->columnArray =
   (char **) palloc0(tupleDescriptor->natts * sizeof(char *));
 }
 else
 {
  execution->attributeInputMetadata = ((void*)0);
  execution->columnArray = ((void*)0);
 }

 if (ShouldExecuteTasksLocally(taskList))
 {
  bool readOnlyPlan = !TaskListModifiesDatabase(modLevel, taskList);

  ExtractLocalAndRemoteTasks(readOnlyPlan, taskList, &execution->localTaskList,
           &execution->remoteTaskList);
 }

 return execution;
}
