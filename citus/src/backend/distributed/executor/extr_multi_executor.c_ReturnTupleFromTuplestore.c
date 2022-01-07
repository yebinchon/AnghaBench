
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int Tuplestorestate ;
typedef int TupleTableSlot ;
struct TYPE_9__ {int * ps_ResultTupleSlot; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;
struct TYPE_11__ {TYPE_2__ ss; } ;
struct TYPE_13__ {TYPE_3__ customScanState; int * tuplestorestate; } ;
struct TYPE_12__ {int es_direction; } ;
typedef int ScanDirection ;
typedef TYPE_4__ EState ;
typedef TYPE_5__ CitusScanState ;


 int Assert (int ) ;
 int NoMovementScanDirection ;
 scalar_t__ ScanDirectionIsBackward (int ) ;
 int ScanDirectionIsValid (int ) ;
 TYPE_4__* ScanStateGetExecutorState (TYPE_5__*) ;
 int tuplestore_gettupleslot (int *,int,int,int *) ;

TupleTableSlot *
ReturnTupleFromTuplestore(CitusScanState *scanState)
{
 Tuplestorestate *tupleStore = scanState->tuplestorestate;
 TupleTableSlot *resultSlot = ((void*)0);
 EState *executorState = ((void*)0);
 ScanDirection scanDirection = NoMovementScanDirection;
 bool forwardScanDirection = 1;

 if (tupleStore == ((void*)0))
 {
  return ((void*)0);
 }

 executorState = ScanStateGetExecutorState(scanState);
 scanDirection = executorState->es_direction;
 Assert(ScanDirectionIsValid(scanDirection));

 if (ScanDirectionIsBackward(scanDirection))
 {
  forwardScanDirection = 0;
 }

 resultSlot = scanState->customScanState.ss.ps.ps_ResultTupleSlot;
 tuplestore_gettupleslot(tupleStore, forwardScanDirection, 0, resultSlot);

 return resultSlot;
}
