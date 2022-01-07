
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
typedef int TupleDesc ;
struct TYPE_3__ {int shardId; } ;
typedef int * SysScanDesc ;
typedef TYPE_1__ ShardInterval ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef int List ;
typedef int * HeapTuple ;
typedef int GroupShardPlacement ;


 int AccessShareLock ;
 int Anum_pg_dist_placement_shardid ;
 int BTEqualStrategyNumber ;
 int DistPlacementRelationId () ;
 int DistPlacementShardidIndexId () ;
 int F_INT8EQ ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int Int64GetDatum (int ) ;
 int * NIL ;
 int NoLock ;
 int RelationGetDescr (int *) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * TupleToGroupShardPlacement (int ,int *) ;
 int heap_close (int *,int ) ;
 int * heap_open (int ,int ) ;
 int * lappend (int *,int *) ;
 int * systable_beginscan (int *,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

List *
BuildShardPlacementList(ShardInterval *shardInterval)
{
 int64 shardId = shardInterval->shardId;
 List *shardPlacementList = NIL;
 Relation pgPlacement = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[1];
 int scanKeyCount = 1;
 bool indexOK = 1;
 HeapTuple heapTuple = ((void*)0);

 pgPlacement = heap_open(DistPlacementRelationId(), AccessShareLock);

 ScanKeyInit(&scanKey[0], Anum_pg_dist_placement_shardid,
    BTEqualStrategyNumber, F_INT8EQ, Int64GetDatum(shardId));

 scanDescriptor = systable_beginscan(pgPlacement,
          DistPlacementShardidIndexId(), indexOK,
          ((void*)0), scanKeyCount, scanKey);

 heapTuple = systable_getnext(scanDescriptor);
 while (HeapTupleIsValid(heapTuple))
 {
  TupleDesc tupleDescriptor = RelationGetDescr(pgPlacement);

  GroupShardPlacement *placement =
   TupleToGroupShardPlacement(tupleDescriptor, heapTuple);

  shardPlacementList = lappend(shardPlacementList, placement);

  heapTuple = systable_getnext(scanDescriptor);
 }

 systable_endscan(scanDescriptor);
 heap_close(pgPlacement, NoLock);

 return shardPlacementList;
}
