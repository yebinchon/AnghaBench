
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char partitionMethod; } ;
struct TYPE_6__ {int minValue; int relationId; } ;
typedef TYPE_1__ ShardInterval ;
typedef int Oid ;
typedef TYPE_2__ DistTableCacheEntry ;
typedef int Datum ;


 char DISTRIBUTE_BY_HASH ;
 char DISTRIBUTE_BY_NONE ;
 TYPE_2__* DistributedTableCacheEntry (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int FindShardIntervalIndex (int ,TYPE_2__*) ;
 int INVALID_SHARD_INDEX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

int
ShardIndex(ShardInterval *shardInterval)
{
 int shardIndex = INVALID_SHARD_INDEX;
 Oid distributedTableId = shardInterval->relationId;
 Datum shardMinValue = shardInterval->minValue;

 DistTableCacheEntry *cacheEntry = DistributedTableCacheEntry(distributedTableId);
 char partitionMethod = cacheEntry->partitionMethod;





 if (partitionMethod != DISTRIBUTE_BY_HASH && partitionMethod != DISTRIBUTE_BY_NONE)
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("finding index of a given shard is only supported for "
          "hash distributed and reference tables")));
 }


 if (partitionMethod == DISTRIBUTE_BY_NONE)
 {

  shardIndex = 0;

  return shardIndex;
 }

 shardIndex = FindShardIntervalIndex(shardMinValue, cacheEntry);

 return shardIndex;
}
