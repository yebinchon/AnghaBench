
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_21__ {int tuplestorestate; } ;
struct TYPE_20__ {int es_param_list_info; } ;
struct TYPE_19__ {scalar_t__ commandType; } ;
struct TYPE_18__ {TYPE_1__* estate; } ;
struct TYPE_17__ {int es_processed; } ;
typedef int ScanDirection ;
typedef int QueryEnvironment ;
typedef TYPE_2__ QueryDesc ;
typedef TYPE_3__ PlannedStmt ;
typedef int ParamListInfo ;
typedef TYPE_4__ EState ;
typedef int DestReceiver ;
typedef TYPE_5__ CitusScanState ;


 scalar_t__ CMD_SELECT ;
 int * CreateDestReceiver (int ) ;
 TYPE_2__* CreateQueryDesc (TYPE_3__*,char*,int ,int ,int *,int ,int *,int ) ;
 int CurrentMemoryContext ;
 int DestTuplestore ;
 int ExecutorEnd (TYPE_2__*) ;
 int ExecutorFinish (TYPE_2__*) ;
 int ExecutorRun (TYPE_2__*,int ,long,int) ;
 int ExecutorStart (TYPE_2__*,int) ;
 int ForwardScanDirection ;
 int FreeQueryDesc (TYPE_2__*) ;
 int GetActiveSnapshot () ;
 int InvalidSnapshot ;
 TYPE_4__* ScanStateGetExecutorState (TYPE_5__*) ;
 int SetTuplestoreDestReceiverParams (int *,int ,int ,int) ;
 int * create_queryEnv () ;

__attribute__((used)) static uint64
ExecuteLocalTaskPlan(CitusScanState *scanState, PlannedStmt *taskPlan, char *queryString)
{
 EState *executorState = ScanStateGetExecutorState(scanState);
 ParamListInfo paramListInfo = executorState->es_param_list_info;
 DestReceiver *tupleStoreDestReceiever = CreateDestReceiver(DestTuplestore);
 ScanDirection scanDirection = ForwardScanDirection;
 QueryEnvironment *queryEnv = create_queryEnv();
 QueryDesc *queryDesc = ((void*)0);
 int eflags = 0;
 uint64 totalRowsProcessed = 0;





 SetTuplestoreDestReceiverParams(tupleStoreDestReceiever,
         scanState->tuplestorestate,
         CurrentMemoryContext, 0);


 queryDesc = CreateQueryDesc(taskPlan, queryString,
        GetActiveSnapshot(), InvalidSnapshot,
        tupleStoreDestReceiever, paramListInfo,
        queryEnv, 0);

 ExecutorStart(queryDesc, eflags);
 ExecutorRun(queryDesc, scanDirection, 0L, 1);





 if (taskPlan->commandType != CMD_SELECT)
 {
  totalRowsProcessed = queryDesc->estate->es_processed;
 }

 ExecutorFinish(queryDesc);
 ExecutorEnd(queryDesc);

 FreeQueryDesc(queryDesc);

 return totalRowsProcessed;
}
