
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int WorkerNode ;
typedef int TupleDesc ;
typedef int Relation ;
typedef int * HeapTuple ;


 int AccessShareLock ;
 int DistNodeRelationId () ;
 int * GetNodeTuple (char const*,int ) ;
 int NoLock ;
 int RelationGetDescr (int ) ;
 int * TupleToWorkerNode (int ,int *) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;

WorkerNode *
FindWorkerNodeAnyCluster(const char *nodeName, int32 nodePort)
{
 WorkerNode *workerNode = ((void*)0);

 Relation pgDistNode = heap_open(DistNodeRelationId(), AccessShareLock);
 TupleDesc tupleDescriptor = RelationGetDescr(pgDistNode);

 HeapTuple heapTuple = GetNodeTuple(nodeName, nodePort);
 if (heapTuple != ((void*)0))
 {
  workerNode = TupleToWorkerNode(tupleDescriptor, heapTuple);
 }

 heap_close(pgDistNode, NoLock);
 return workerNode;
}
