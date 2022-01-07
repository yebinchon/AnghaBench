
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nodeCluster; } ;
typedef TYPE_1__ WorkerNode ;
typedef int * TupleDesc ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int List ;
typedef int * HeapTuple ;


 int AccessShareLock ;
 int CurrentCluster ;
 int DistNodeRelationId () ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int InvalidOid ;
 int * NIL ;
 int NoLock ;
 int * RelationGetDescr (int ) ;
 TYPE_1__* TupleToWorkerNode (int *,int *) ;
 int WORKER_LENGTH ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int * lappend (int *,TYPE_1__*) ;
 scalar_t__ strncmp (int ,int ,int ) ;
 int * systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

List *
ReadDistNode(bool includeNodesFromOtherClusters)
{
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[1];
 int scanKeyCount = 0;
 HeapTuple heapTuple = ((void*)0);
 List *workerNodeList = NIL;
 TupleDesc tupleDescriptor = ((void*)0);

 Relation pgDistNode = heap_open(DistNodeRelationId(), AccessShareLock);

 scanDescriptor = systable_beginscan(pgDistNode,
          InvalidOid, 0,
          ((void*)0), scanKeyCount, scanKey);

 tupleDescriptor = RelationGetDescr(pgDistNode);

 heapTuple = systable_getnext(scanDescriptor);
 while (HeapTupleIsValid(heapTuple))
 {
  WorkerNode *workerNode = TupleToWorkerNode(tupleDescriptor, heapTuple);

  if (includeNodesFromOtherClusters ||
   strncmp(workerNode->nodeCluster, CurrentCluster, WORKER_LENGTH) == 0)
  {

   workerNodeList = lappend(workerNodeList, workerNode);
  }

  heapTuple = systable_getnext(scanDescriptor);
 }

 systable_endscan(scanDescriptor);
 heap_close(pgDistNode, NoLock);

 return workerNodeList;
}
