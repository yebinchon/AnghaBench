
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int shardIntervalArrayLength; TYPE_1__** sortedShardIntervalArray; } ;
struct TYPE_4__ {int shardId; } ;
typedef TYPE_1__ ShardInterval ;
typedef int Oid ;
typedef TYPE_2__ DistTableCacheEntry ;
typedef int Datum ;
typedef int ArrayType ;


 int * DatumArrayToArrayType (int *,int,int ) ;
 TYPE_2__* DistributedTableCacheEntry (int ) ;
 int INT8OID ;
 int Int64GetDatum (int ) ;
 int * palloc0 (int) ;

__attribute__((used)) static ArrayType *
SortedShardIntervalArray(Oid distributedTableId)
{
 ArrayType *shardIdArrayType = ((void*)0);
 int shardIndex = 0;
 Oid shardIdTypeId = INT8OID;

 DistTableCacheEntry *cacheEntry = DistributedTableCacheEntry(distributedTableId);
 ShardInterval **shardIntervalArray = cacheEntry->sortedShardIntervalArray;
 int shardIdCount = cacheEntry->shardIntervalArrayLength;
 Datum *shardIdDatumArray = palloc0(shardIdCount * sizeof(Datum));

 for (shardIndex = 0; shardIndex < shardIdCount; ++shardIndex)
 {
  ShardInterval *shardId = shardIntervalArray[shardIndex];
  Datum shardIdDatum = Int64GetDatum(shardId->shardId);

  shardIdDatumArray[shardIndex] = shardIdDatum;
 }

 shardIdArrayType = DatumArrayToArrayType(shardIdDatumArray, shardIdCount,
            shardIdTypeId);

 return shardIdArrayType;
}
