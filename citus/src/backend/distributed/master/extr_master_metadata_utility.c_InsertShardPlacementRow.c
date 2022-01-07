
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int values ;
typedef scalar_t__ uint64 ;
typedef int isNulls ;
typedef int int32 ;
typedef int * TupleDesc ;
typedef int * Relation ;
typedef int * HeapTuple ;
typedef int Datum ;


 int Anum_pg_dist_placement_groupid ;
 int Anum_pg_dist_placement_placementid ;
 int Anum_pg_dist_placement_shardid ;
 int Anum_pg_dist_placement_shardlength ;
 int Anum_pg_dist_placement_shardstate ;
 int CatalogTupleInsert (int *,int *) ;
 int CharGetDatum (char) ;
 int CitusInvalidateRelcacheByShardId (scalar_t__) ;
 int CommandCounterIncrement () ;
 int DistPlacementRelationId () ;
 scalar_t__ INVALID_PLACEMENT_ID ;
 int Int32GetDatum (int ) ;
 int Int64GetDatum (scalar_t__) ;
 int Natts_pg_dist_placement ;
 int NoLock ;
 int * RelationGetDescr (int *) ;
 int RowExclusiveLock ;
 int heap_close (int *,int ) ;
 int * heap_form_tuple (int *,int*,int*) ;
 int * heap_open (int ,int ) ;
 scalar_t__ master_get_new_placementid (int *) ;
 int memset (int*,int,int) ;

uint64
InsertShardPlacementRow(uint64 shardId, uint64 placementId,
      char shardState, uint64 shardLength,
      int32 groupId)
{
 Relation pgDistPlacement = ((void*)0);
 TupleDesc tupleDescriptor = ((void*)0);
 HeapTuple heapTuple = ((void*)0);
 Datum values[Natts_pg_dist_placement];
 bool isNulls[Natts_pg_dist_placement];


 memset(values, 0, sizeof(values));
 memset(isNulls, 0, sizeof(isNulls));

 if (placementId == INVALID_PLACEMENT_ID)
 {
  placementId = master_get_new_placementid(((void*)0));
 }
 values[Anum_pg_dist_placement_placementid - 1] = Int64GetDatum(placementId);
 values[Anum_pg_dist_placement_shardid - 1] = Int64GetDatum(shardId);
 values[Anum_pg_dist_placement_shardstate - 1] = CharGetDatum(shardState);
 values[Anum_pg_dist_placement_shardlength - 1] = Int64GetDatum(shardLength);
 values[Anum_pg_dist_placement_groupid - 1] = Int32GetDatum(groupId);


 pgDistPlacement = heap_open(DistPlacementRelationId(), RowExclusiveLock);

 tupleDescriptor = RelationGetDescr(pgDistPlacement);
 heapTuple = heap_form_tuple(tupleDescriptor, values, isNulls);

 CatalogTupleInsert(pgDistPlacement, heapTuple);

 CitusInvalidateRelcacheByShardId(shardId);

 CommandCounterIncrement();
 heap_close(pgDistPlacement, NoLock);

 return placementId;
}
