
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shardIntervalArrayLength; scalar_t__ isDistributedTable; } ;
typedef int Oid ;
typedef TYPE_1__ DistTableCacheEntry ;


 TYPE_1__* DistributedTableCacheEntry (int ) ;

int
ShardIntervalCount(Oid relationId)
{
 DistTableCacheEntry *cacheEntry = DistributedTableCacheEntry(relationId);
 int shardIntervalCount = 0;

 if (cacheEntry->isDistributedTable)
 {
  shardIntervalCount = cacheEntry->shardIntervalArrayLength;
 }

 return shardIntervalCount;
}
