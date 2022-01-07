
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_5__ {int isDistributedTable; size_t shardIntervalArrayLength; int ** sortedShardIntervalArray; } ;
struct TYPE_4__ {size_t shardIndex; TYPE_2__* tableEntry; } ;
typedef int ShardInterval ;
typedef TYPE_1__ ShardCacheEntry ;
typedef TYPE_2__ DistTableCacheEntry ;


 int Assert (int) ;
 int CopyShardInterval (int *,int *) ;
 TYPE_1__* LookupShardCacheEntry (int ) ;
 scalar_t__ palloc0 (int) ;

ShardInterval *
LoadShardInterval(uint64 shardId)
{
 ShardInterval *shardInterval = ((void*)0);
 ShardInterval *sourceShardInterval = ((void*)0);
 ShardCacheEntry *shardEntry = ((void*)0);
 DistTableCacheEntry *tableEntry = ((void*)0);

 shardEntry = LookupShardCacheEntry(shardId);

 tableEntry = shardEntry->tableEntry;

 Assert(tableEntry->isDistributedTable);


 Assert(shardEntry->shardIndex < tableEntry->shardIntervalArrayLength);

 sourceShardInterval = tableEntry->sortedShardIntervalArray[shardEntry->shardIndex];


 shardInterval = (ShardInterval *) palloc0(sizeof(ShardInterval));
 CopyShardInterval(sourceShardInterval, shardInterval);

 return shardInterval;
}
