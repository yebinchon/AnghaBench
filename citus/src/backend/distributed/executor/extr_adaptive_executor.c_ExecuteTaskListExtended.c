
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64 ;
typedef int Tuplestorestate ;
typedef int TupleDesc ;
struct TYPE_6__ {int rowsProcessed; } ;
typedef int RowModifyLevel ;
typedef int * ParamListInfo ;
typedef int List ;
typedef TYPE_1__ DistributedExecution ;


 TYPE_1__* CreateDistributedExecution (int ,int *,int,int *,int ,int *,int) ;
 int ErrorIfLocalExecutionHappened () ;
 int FinishDistributedExecution (TYPE_1__*) ;
 scalar_t__ MultiShardConnectionType ;
 int RunDistributedExecution (TYPE_1__*) ;
 scalar_t__ SEQUENTIAL_CONNECTION ;
 int StartDistributedExecution (TYPE_1__*) ;

uint64
ExecuteTaskListExtended(RowModifyLevel modLevel, List *taskList,
      TupleDesc tupleDescriptor, Tuplestorestate *tupleStore,
      bool hasReturning, int targetPoolSize)
{
 DistributedExecution *execution = ((void*)0);
 ParamListInfo paramListInfo = ((void*)0);





 ErrorIfLocalExecutionHappened();

 if (MultiShardConnectionType == SEQUENTIAL_CONNECTION)
 {
  targetPoolSize = 1;
 }

 execution =
  CreateDistributedExecution(modLevel, taskList, hasReturning, paramListInfo,
           tupleDescriptor, tupleStore, targetPoolSize);

 StartDistributedExecution(execution);
 RunDistributedExecution(execution);
 FinishDistributedExecution(execution);

 return execution->rowsProcessed;
}
