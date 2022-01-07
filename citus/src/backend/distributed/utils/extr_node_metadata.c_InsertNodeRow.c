
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int values ;
typedef int isNulls ;
typedef int int32 ;
typedef int * TupleDesc ;
struct TYPE_3__ {char* nodeRack; int shouldHaveShards; int nodeRole; int isActive; int metadataSynced; int hasMetadata; int groupId; int nodeCluster; } ;
typedef int * Relation ;
typedef TYPE_1__ NodeMetadata ;
typedef int * HeapTuple ;
typedef int Datum ;


 int Anum_pg_dist_node_groupid ;
 int Anum_pg_dist_node_hasmetadata ;
 int Anum_pg_dist_node_isactive ;
 int Anum_pg_dist_node_metadatasynced ;
 int Anum_pg_dist_node_nodecluster ;
 int Anum_pg_dist_node_nodeid ;
 int Anum_pg_dist_node_nodename ;
 int Anum_pg_dist_node_nodeport ;
 int Anum_pg_dist_node_noderack ;
 int Anum_pg_dist_node_noderole ;
 int Anum_pg_dist_node_shouldhaveshards ;
 int BoolGetDatum (int ) ;
 int CStringGetDatum (int ) ;
 int CStringGetTextDatum (char*) ;
 int CatalogTupleInsert (int *,int *) ;
 int CitusInvalidateRelcacheByRelid (int ) ;
 int CommandCounterIncrement () ;
 int DirectFunctionCall1 (int ,int) ;
 int DistNodeRelationId () ;
 int Int32GetDatum (int ) ;
 int Natts_pg_dist_node ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int * RelationGetDescr (int *) ;
 int RowExclusiveLock ;
 int UInt32GetDatum (int) ;
 int heap_close (int *,int ) ;
 int * heap_form_tuple (int *,int*,int*) ;
 int * heap_open (int ,int ) ;
 int memset (int*,int,int) ;
 int namein ;

__attribute__((used)) static void
InsertNodeRow(int nodeid, char *nodeName, int32 nodePort, NodeMetadata *nodeMetadata)
{
 Relation pgDistNode = ((void*)0);
 TupleDesc tupleDescriptor = ((void*)0);
 HeapTuple heapTuple = ((void*)0);
 Datum values[Natts_pg_dist_node];
 bool isNulls[Natts_pg_dist_node];

 Datum nodeClusterStringDatum = CStringGetDatum(nodeMetadata->nodeCluster);
 Datum nodeClusterNameDatum = DirectFunctionCall1(namein, nodeClusterStringDatum);


 memset(values, 0, sizeof(values));
 memset(isNulls, 0, sizeof(isNulls));

 values[Anum_pg_dist_node_nodeid - 1] = UInt32GetDatum(nodeid);
 values[Anum_pg_dist_node_groupid - 1] = Int32GetDatum(nodeMetadata->groupId);
 values[Anum_pg_dist_node_nodename - 1] = CStringGetTextDatum(nodeName);
 values[Anum_pg_dist_node_nodeport - 1] = UInt32GetDatum(nodePort);
 values[Anum_pg_dist_node_noderack - 1] = CStringGetTextDatum(nodeMetadata->nodeRack);
 values[Anum_pg_dist_node_hasmetadata - 1] = BoolGetDatum(nodeMetadata->hasMetadata);
 values[Anum_pg_dist_node_metadatasynced - 1] = BoolGetDatum(
  nodeMetadata->metadataSynced);
 values[Anum_pg_dist_node_isactive - 1] = BoolGetDatum(nodeMetadata->isActive);
 values[Anum_pg_dist_node_noderole - 1] = ObjectIdGetDatum(nodeMetadata->nodeRole);
 values[Anum_pg_dist_node_nodecluster - 1] = nodeClusterNameDatum;
 values[Anum_pg_dist_node_shouldhaveshards - 1] = BoolGetDatum(
  nodeMetadata->shouldHaveShards);

 pgDistNode = heap_open(DistNodeRelationId(), RowExclusiveLock);

 tupleDescriptor = RelationGetDescr(pgDistNode);
 heapTuple = heap_form_tuple(tupleDescriptor, values, isNulls);

 CatalogTupleInsert(pgDistNode, heapTuple);

 CitusInvalidateRelcacheByRelid(DistNodeRelationId());


 CommandCounterIncrement();


 heap_close(pgDistNode, NoLock);
}
