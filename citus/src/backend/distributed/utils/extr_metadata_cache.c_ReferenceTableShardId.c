
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_5__ {scalar_t__ partitionMethod; } ;
struct TYPE_4__ {TYPE_2__* tableEntry; } ;
typedef TYPE_1__ ShardCacheEntry ;
typedef TYPE_2__ DistTableCacheEntry ;


 scalar_t__ DISTRIBUTE_BY_NONE ;
 TYPE_1__* LookupShardCacheEntry (int ) ;

bool
ReferenceTableShardId(uint64 shardId)
{
 ShardCacheEntry *shardEntry = LookupShardCacheEntry(shardId);
 DistTableCacheEntry *tableEntry = shardEntry->tableEntry;

 return (tableEntry->partitionMethod == DISTRIBUTE_BY_NONE);
}
