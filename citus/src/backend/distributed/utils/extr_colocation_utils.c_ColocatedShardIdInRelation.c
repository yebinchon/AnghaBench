
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_5__ {TYPE_1__** sortedShardIntervalArray; } ;
struct TYPE_4__ {int shardId; } ;
typedef int Oid ;
typedef TYPE_2__ DistTableCacheEntry ;


 TYPE_2__* DistributedTableCacheEntry (int ) ;

uint64
ColocatedShardIdInRelation(Oid relationId, int shardIndex)
{
 DistTableCacheEntry *tableCacheEntry = DistributedTableCacheEntry(relationId);

 return tableCacheEntry->sortedShardIntervalArray[shardIndex]->shardId;
}
