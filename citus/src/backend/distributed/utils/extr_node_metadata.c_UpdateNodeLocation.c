
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int replace ;
typedef int int32 ;
typedef int * TupleDesc ;
struct TYPE_7__ {int t_self; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef TYPE_1__* HeapTuple ;
typedef int Datum ;


 int Anum_pg_dist_node_nodeid ;
 int Anum_pg_dist_node_nodename ;
 int Anum_pg_dist_node_nodeport ;
 int BTEqualStrategyNumber ;
 int CStringGetTextDatum (char*) ;
 int CatalogTupleUpdate (int *,int *,TYPE_1__*) ;
 int CitusInvalidateRelcacheByRelid (int ) ;
 int CommandCounterIncrement () ;
 int DistNodeNodeIdIndexId () ;
 int DistNodeRelationId () ;
 int ERROR ;
 int F_INT4EQ ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int Int32GetDatum (int ) ;
 int Natts_pg_dist_node ;
 int NoLock ;
 int * RelationGetDescr (int *) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*,int ) ;
 int heap_close (int *,int ) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int *,int *,int*,int*) ;
 int * heap_open (int ,int ) ;
 int memset (int*,int ,int) ;
 int * systable_beginscan (int *,int ,int const,int *,int,int *) ;
 int systable_endscan (int *) ;
 TYPE_1__* systable_getnext (int *) ;

__attribute__((used)) static void
UpdateNodeLocation(int32 nodeId, char *newNodeName, int32 newNodePort)
{
 const bool indexOK = 1;

 Relation pgDistNode = ((void*)0);
 TupleDesc tupleDescriptor = ((void*)0);
 ScanKeyData scanKey[1];
 SysScanDesc scanDescriptor = ((void*)0);
 HeapTuple heapTuple = ((void*)0);
 Datum values[Natts_pg_dist_node];
 bool isnull[Natts_pg_dist_node];
 bool replace[Natts_pg_dist_node];

 pgDistNode = heap_open(DistNodeRelationId(), RowExclusiveLock);
 tupleDescriptor = RelationGetDescr(pgDistNode);

 ScanKeyInit(&scanKey[0], Anum_pg_dist_node_nodeid,
    BTEqualStrategyNumber, F_INT4EQ, Int32GetDatum(nodeId));

 scanDescriptor = systable_beginscan(pgDistNode, DistNodeNodeIdIndexId(), indexOK,
          ((void*)0), 1, scanKey);

 heapTuple = systable_getnext(scanDescriptor);
 if (!HeapTupleIsValid(heapTuple))
 {
  ereport(ERROR, (errmsg("could not find valid entry for node \"%s:%d\"",
          newNodeName, newNodePort)));
 }

 memset(replace, 0, sizeof(replace));

 values[Anum_pg_dist_node_nodeport - 1] = Int32GetDatum(newNodePort);
 isnull[Anum_pg_dist_node_nodeport - 1] = 0;
 replace[Anum_pg_dist_node_nodeport - 1] = 1;

 values[Anum_pg_dist_node_nodename - 1] = CStringGetTextDatum(newNodeName);
 isnull[Anum_pg_dist_node_nodename - 1] = 0;
 replace[Anum_pg_dist_node_nodename - 1] = 1;

 heapTuple = heap_modify_tuple(heapTuple, tupleDescriptor, values, isnull, replace);

 CatalogTupleUpdate(pgDistNode, &heapTuple->t_self, heapTuple);

 CitusInvalidateRelcacheByRelid(DistNodeRelationId());

 CommandCounterIncrement();

 systable_endscan(scanDescriptor);
 heap_close(pgDistNode, NoLock);
}
