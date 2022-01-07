
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ partitionMethod; int ** sortedShardIntervalArray; TYPE_1__* partitionColumn; int hashFunction; } ;
struct TYPE_5__ {int varcollid; } ;
typedef int ShardInterval ;
typedef TYPE_2__ DistTableCacheEntry ;
typedef int Datum ;


 scalar_t__ DISTRIBUTE_BY_HASH ;
 int FindShardIntervalIndex (int ,TYPE_2__*) ;
 int FunctionCall1Coll (int ,int ,int ) ;
 int INVALID_SHARD_INDEX ;

ShardInterval *
FindShardInterval(Datum partitionColumnValue, DistTableCacheEntry *cacheEntry)
{
 Datum searchedValue = partitionColumnValue;
 int shardIndex = INVALID_SHARD_INDEX;

 if (cacheEntry->partitionMethod == DISTRIBUTE_BY_HASH)
 {
  searchedValue = FunctionCall1Coll(cacheEntry->hashFunction,
            cacheEntry->partitionColumn->varcollid,
            partitionColumnValue);
 }

 shardIndex = FindShardIntervalIndex(searchedValue, cacheEntry);

 if (shardIndex == INVALID_SHARD_INDEX)
 {
  return ((void*)0);
 }

 return cacheEntry->sortedShardIntervalArray[shardIndex];
}
