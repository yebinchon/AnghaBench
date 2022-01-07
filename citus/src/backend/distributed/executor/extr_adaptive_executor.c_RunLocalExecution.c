
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_6__ {int localTaskList; } ;
struct TYPE_5__ {int es_processed; } ;
typedef TYPE_1__ EState ;
typedef TYPE_2__ DistributedExecution ;
typedef int CitusScanState ;


 int ExecuteLocalTaskList (int *,int ) ;
 int LocalExecutionHappened ;
 TYPE_1__* ScanStateGetExecutorState (int *) ;

__attribute__((used)) static void
RunLocalExecution(CitusScanState *scanState, DistributedExecution *execution)
{
 uint64 rowsProcessed = ExecuteLocalTaskList(scanState, execution->localTaskList);
 EState *executorState = ((void*)0);

 LocalExecutionHappened = 1;







 executorState = ScanStateGetExecutorState(scanState);
 executorState->es_processed = rowsProcessed;
}
