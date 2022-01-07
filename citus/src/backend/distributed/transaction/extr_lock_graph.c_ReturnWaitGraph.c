
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int values ;
typedef int nulls ;
struct TYPE_4__ {size_t edgeCount; TYPE_2__* edges; } ;
typedef TYPE_1__ WaitGraph ;
struct TYPE_5__ {scalar_t__ waitingTransactionNum; scalar_t__ blockingTransactionNum; int isBlockingXactWaiting; int blockingTransactionStamp; int blockingNodeId; int blockingPid; int waitingTransactionStamp; int waitingNodeId; int waitingPid; } ;
typedef TYPE_2__ WaitEdge ;
typedef int Tuplestorestate ;
typedef int TupleDesc ;
typedef int FunctionCallInfo ;
typedef int Datum ;


 int BoolGetDatum (int ) ;
 int Int32GetDatum (int ) ;
 int Int64GetDatum (scalar_t__) ;
 int * SetupTuplestore (int ,int *) ;
 int TimestampTzGetDatum (int ) ;
 int memset (int*,int ,int) ;
 int tuplestore_donestoring (int *) ;
 int tuplestore_putvalues (int *,int ,int*,int*) ;

__attribute__((used)) static void
ReturnWaitGraph(WaitGraph *waitGraph, FunctionCallInfo fcinfo)
{
 size_t curEdgeNum = 0;
 TupleDesc tupleDesc;
 Tuplestorestate *tupleStore = SetupTuplestore(fcinfo, &tupleDesc);
 for (curEdgeNum = 0; curEdgeNum < waitGraph->edgeCount; curEdgeNum++)
 {
  Datum values[9];
  bool nulls[9];
  WaitEdge *curEdge = &waitGraph->edges[curEdgeNum];

  memset(values, 0, sizeof(values));
  memset(nulls, 0, sizeof(nulls));

  values[0] = Int32GetDatum(curEdge->waitingPid);
  values[1] = Int32GetDatum(curEdge->waitingNodeId);
  if (curEdge->waitingTransactionNum != 0)
  {
   values[2] = Int64GetDatum(curEdge->waitingTransactionNum);
   values[3] = TimestampTzGetDatum(curEdge->waitingTransactionStamp);
  }
  else
  {
   nulls[2] = 1;
   nulls[3] = 1;
  }

  values[4] = Int32GetDatum(curEdge->blockingPid);
  values[5] = Int32GetDatum(curEdge->blockingNodeId);
  if (curEdge->blockingTransactionNum != 0)
  {
   values[6] = Int64GetDatum(curEdge->blockingTransactionNum);
   values[7] = TimestampTzGetDatum(curEdge->blockingTransactionStamp);
  }
  else
  {
   nulls[6] = 1;
   nulls[7] = 1;
  }
  values[8] = BoolGetDatum(curEdge->isBlockingXactWaiting);

  tuplestore_putvalues(tupleStore, tupleDesc, values, nulls);
 }


 tuplestore_donestoring(tupleStore);
}
