
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_4__ {int finishedRemoteScan; } ;
typedef int CustomScanState ;
typedef TYPE_1__ CitusScanState ;


 int AdaptiveExecutor (TYPE_1__*) ;
 int * ReturnTupleFromTuplestore (TYPE_1__*) ;

TupleTableSlot *
CitusExecScan(CustomScanState *node)
{
 CitusScanState *scanState = (CitusScanState *) node;
 TupleTableSlot *resultSlot = ((void*)0);

 if (!scanState->finishedRemoteScan)
 {
  AdaptiveExecutor(scanState);

  scanState->finishedRemoteScan = 1;
 }

 resultSlot = ReturnTupleFromTuplestore(scanState);

 return resultSlot;
}
