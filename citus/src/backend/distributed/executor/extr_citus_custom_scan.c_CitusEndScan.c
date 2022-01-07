
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_8__ {scalar_t__ executorType; int * tuplestorestate; TYPE_1__* distributedPlan; } ;
struct TYPE_7__ {int consttype; int constvalue; } ;
struct TYPE_6__ {TYPE_3__* partitionKeyValue; } ;
struct TYPE_5__ {scalar_t__ queryId; TYPE_2__* workerJob; } ;
typedef scalar_t__ MultiExecutorType ;
typedef TYPE_2__ Job ;
typedef int CustomScanState ;
typedef TYPE_3__ Const ;
typedef TYPE_4__ CitusScanState ;


 int CitusQueryStatsExecutorsEntry (scalar_t__,scalar_t__,char*) ;
 char* DatumToString (int ,int ) ;
 scalar_t__ MULTI_EXECUTOR_ADAPTIVE ;
 int tuplestore_end (int *) ;

__attribute__((used)) static void
CitusEndScan(CustomScanState *node)
{
 CitusScanState *scanState = (CitusScanState *) node;
 Job *workerJob = scanState->distributedPlan->workerJob;
 uint64 queryId = scanState->distributedPlan->queryId;
 MultiExecutorType executorType = scanState->executorType;
 Const *partitionKeyConst = ((void*)0);
 char *partitionKeyString = ((void*)0);

 if (workerJob != ((void*)0))
 {
  partitionKeyConst = workerJob->partitionKeyValue;
 }


 if (queryId != 0)
 {
  if (partitionKeyConst != ((void*)0) && executorType == MULTI_EXECUTOR_ADAPTIVE)
  {
   partitionKeyString = DatumToString(partitionKeyConst->constvalue,
              partitionKeyConst->consttype);
  }


  CitusQueryStatsExecutorsEntry(queryId, executorType, partitionKeyString);
 }

 if (scanState->tuplestorestate)
 {
  tuplestore_end(scanState->tuplestorestate);
  scanState->tuplestorestate = ((void*)0);
 }
}
