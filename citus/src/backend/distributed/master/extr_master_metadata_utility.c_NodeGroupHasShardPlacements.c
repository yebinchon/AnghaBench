
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int * HeapTuple ;


 int AccessShareLock ;
 int Anum_pg_dist_placement_groupid ;
 int Anum_pg_dist_placement_shardstate ;
 int BTEqualStrategyNumber ;
 int DistPlacementGroupidIndexId () ;
 int DistPlacementRelationId () ;
 int FILE_FINALIZED ;
 int F_INT4EQ ;
 int HeapTupleIsValid (int *) ;
 int Int32GetDatum (int ) ;
 int NoLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int * systable_beginscan (int ,int ,int const,int *,int const,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

bool
NodeGroupHasShardPlacements(int32 groupId, bool onlyConsiderActivePlacements)
{
 const int scanKeyCount = (onlyConsiderActivePlacements ? 2 : 1);
 const bool indexOK = 0;

 bool hasFinalizedPlacements = 0;

 HeapTuple heapTuple = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[2];

 Relation pgPlacement = heap_open(DistPlacementRelationId(),
          AccessShareLock);

 ScanKeyInit(&scanKey[0], Anum_pg_dist_placement_groupid,
    BTEqualStrategyNumber, F_INT4EQ, Int32GetDatum(groupId));
 if (onlyConsiderActivePlacements)
 {
  ScanKeyInit(&scanKey[1], Anum_pg_dist_placement_shardstate,
     BTEqualStrategyNumber, F_INT4EQ, Int32GetDatum(FILE_FINALIZED));
 }

 scanDescriptor = systable_beginscan(pgPlacement,
          DistPlacementGroupidIndexId(), indexOK,
          ((void*)0), scanKeyCount, scanKey);

 heapTuple = systable_getnext(scanDescriptor);
 hasFinalizedPlacements = HeapTupleIsValid(heapTuple);

 systable_endscan(scanDescriptor);
 heap_close(pgPlacement, NoLock);

 return hasFinalizedPlacements;
}
