
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_4__ {int t_self; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef TYPE_1__* HeapTuple ;


 int AccessShareLock ;
 int Anum_pg_dist_node_nodename ;
 int Anum_pg_dist_node_nodeport ;
 int BTEqualStrategyNumber ;
 int CStringGetTextDatum (char*) ;
 int CitusInvalidateRelcacheByRelid (int ) ;
 int CommandCounterIncrement () ;
 int DistNodeRelationId () ;
 int ERROR ;
 int F_INT4EQ ;
 int F_TEXTEQ ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int Int32GetDatum (int ) ;
 int InvalidOid ;
 int NoLock ;
 int RelationGetReplicaIndex (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*,int ) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int index_open (int ,int ) ;
 int simple_heap_delete (int ,int *) ;
 int * systable_beginscan (int ,int ,int,int *,int const,int *) ;
 int systable_endscan (int *) ;
 TYPE_1__* systable_getnext (int *) ;

__attribute__((used)) static void
DeleteNodeRow(char *nodeName, int32 nodePort)
{
 const int scanKeyCount = 2;
 bool indexOK = 0;

 HeapTuple heapTuple = ((void*)0);
 SysScanDesc heapScan = ((void*)0);
 ScanKeyData scanKey[2];
 Relation pgDistNode = heap_open(DistNodeRelationId(), RowExclusiveLock);





 Relation replicaIndex = index_open(RelationGetReplicaIndex(pgDistNode),
            AccessShareLock);

 ScanKeyInit(&scanKey[0], Anum_pg_dist_node_nodename,
    BTEqualStrategyNumber, F_TEXTEQ, CStringGetTextDatum(nodeName));
 ScanKeyInit(&scanKey[1], Anum_pg_dist_node_nodeport,
    BTEqualStrategyNumber, F_INT4EQ, Int32GetDatum(nodePort));

 heapScan = systable_beginscan(pgDistNode, InvalidOid, indexOK,
          ((void*)0), scanKeyCount, scanKey);

 heapTuple = systable_getnext(heapScan);

 if (!HeapTupleIsValid(heapTuple))
 {
  ereport(ERROR, (errmsg("could not find valid entry for node \"%s:%d\"",
          nodeName, nodePort)));
 }

 simple_heap_delete(pgDistNode, &(heapTuple->t_self));

 systable_endscan(heapScan);


 CitusInvalidateRelcacheByRelid(DistNodeRelationId());


 CommandCounterIncrement();

 heap_close(replicaIndex, AccessShareLock);
 heap_close(pgDistNode, NoLock);
}
