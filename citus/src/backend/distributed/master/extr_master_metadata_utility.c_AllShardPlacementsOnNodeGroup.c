
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int TupleDesc ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef int List ;
typedef int * HeapTuple ;
typedef int GroupShardPlacement ;


 int AccessShareLock ;
 int Anum_pg_dist_placement_groupid ;
 int BTEqualStrategyNumber ;
 int DistPlacementGroupidIndexId () ;
 int DistPlacementRelationId () ;
 int F_INT4EQ ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int Int32GetDatum (int ) ;
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
AllShardPlacementsOnNodeGroup(int32 groupId)
{
 List *shardPlacementList = NIL;
 Relation pgPlacement = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[1];
 int scanKeyCount = 1;
 bool indexOK = 1;
 HeapTuple heapTuple = ((void*)0);

 pgPlacement = heap_open(DistPlacementRelationId(), AccessShareLock);

 ScanKeyInit(&scanKey[0], Anum_pg_dist_placement_groupid,
    BTEqualStrategyNumber, F_INT4EQ, Int32GetDatum(groupId));

 scanDescriptor = systable_beginscan(pgPlacement,
          DistPlacementGroupidIndexId(), indexOK,
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
