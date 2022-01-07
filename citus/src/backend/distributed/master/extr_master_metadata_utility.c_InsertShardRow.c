
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int values ;
typedef int uint64 ;
typedef int text ;
typedef int isNulls ;
typedef int * TupleDesc ;
typedef int * Relation ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef int Datum ;


 int Anum_pg_dist_shard_logicalrelid ;
 int Anum_pg_dist_shard_shardalias_DROPPED ;
 int Anum_pg_dist_shard_shardid ;
 int Anum_pg_dist_shard_shardmaxvalue ;
 int Anum_pg_dist_shard_shardminvalue ;
 int Anum_pg_dist_shard_shardstorage ;
 int CatalogTupleInsert (int *,int *) ;
 int CharGetDatum (char) ;
 int CitusInvalidateRelcacheByRelid (int ) ;
 int CommandCounterIncrement () ;
 int DistShardRelationId () ;
 int Int64GetDatum (int ) ;
 int Natts_pg_dist_shard ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int *) ;
 int * RelationGetDescr (int *) ;
 int RowExclusiveLock ;
 int heap_close (int *,int ) ;
 int * heap_form_tuple (int *,int*,int*) ;
 int * heap_open (int ,int ) ;
 int memset (int*,int,int) ;

void
InsertShardRow(Oid relationId, uint64 shardId, char storageType,
      text *shardMinValue, text *shardMaxValue)
{
 Relation pgDistShard = ((void*)0);
 TupleDesc tupleDescriptor = ((void*)0);
 HeapTuple heapTuple = ((void*)0);
 Datum values[Natts_pg_dist_shard];
 bool isNulls[Natts_pg_dist_shard];


 memset(values, 0, sizeof(values));
 memset(isNulls, 0, sizeof(isNulls));

 values[Anum_pg_dist_shard_logicalrelid - 1] = ObjectIdGetDatum(relationId);
 values[Anum_pg_dist_shard_shardid - 1] = Int64GetDatum(shardId);
 values[Anum_pg_dist_shard_shardstorage - 1] = CharGetDatum(storageType);


 isNulls[Anum_pg_dist_shard_shardalias_DROPPED - 1] = 1;


 if (shardMinValue != ((void*)0) && shardMaxValue != ((void*)0))
 {
  values[Anum_pg_dist_shard_shardminvalue - 1] = PointerGetDatum(shardMinValue);
  values[Anum_pg_dist_shard_shardmaxvalue - 1] = PointerGetDatum(shardMaxValue);
 }
 else
 {
  isNulls[Anum_pg_dist_shard_shardminvalue - 1] = 1;
  isNulls[Anum_pg_dist_shard_shardmaxvalue - 1] = 1;
 }


 pgDistShard = heap_open(DistShardRelationId(), RowExclusiveLock);

 tupleDescriptor = RelationGetDescr(pgDistShard);
 heapTuple = heap_form_tuple(tupleDescriptor, values, isNulls);

 CatalogTupleInsert(pgDistShard, heapTuple);


 CitusInvalidateRelcacheByRelid(relationId);

 CommandCounterIncrement();
 heap_close(pgDistShard, NoLock);
}
