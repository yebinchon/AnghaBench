
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int values ;
typedef int isNulls ;
typedef int int64 ;
struct TYPE_3__ {scalar_t__ workerPort; int workerName; } ;
typedef TYPE_1__ WorkerNode ;
typedef int TupleDesc ;
typedef int * HeapTuple ;
typedef int Datum ;


 int CStringGetTextDatum (int ) ;
 int HeapTupleGetDatum (int *) ;
 int Int64GetDatum (int ) ;
 int WORKER_NODE_FIELDS ;
 int * heap_form_tuple (int ,int*,int*) ;
 int memset (int*,int,int) ;

__attribute__((used)) static Datum
WorkerNodeGetDatum(WorkerNode *workerNode, TupleDesc tupleDescriptor)
{
 Datum values[WORKER_NODE_FIELDS];
 bool isNulls[WORKER_NODE_FIELDS];
 HeapTuple workerNodeTuple = ((void*)0);
 Datum workerNodeDatum = 0;

 memset(values, 0, sizeof(values));
 memset(isNulls, 0, sizeof(isNulls));

 values[0] = CStringGetTextDatum(workerNode->workerName);
 values[1] = Int64GetDatum((int64) workerNode->workerPort);

 workerNodeTuple = heap_form_tuple(tupleDescriptor, values, isNulls);
 workerNodeDatum = HeapTupleGetDatum(workerNodeTuple);

 return workerNodeDatum;
}
