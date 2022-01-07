
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shardIntervalArrayLength; int * sortedShardIntervalArray; } ;
typedef int ShardInterval ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__ DistTableCacheEntry ;


 int CopyShardInterval (int ,int *) ;
 TYPE_1__* DistributedTableCacheEntry (int ) ;
 int * NIL ;
 int * lappend (int *,int *) ;
 scalar_t__ palloc0 (int) ;

List *
LoadShardIntervalList(Oid relationId)
{
 DistTableCacheEntry *cacheEntry = DistributedTableCacheEntry(relationId);
 List *shardList = NIL;
 int i = 0;

 for (i = 0; i < cacheEntry->shardIntervalArrayLength; i++)
 {
  ShardInterval *newShardInterval = ((void*)0);
  newShardInterval = (ShardInterval *) palloc0(sizeof(ShardInterval));

  CopyShardInterval(cacheEntry->sortedShardIntervalArray[i], newShardInterval);

  shardList = lappend(shardList, newShardInterval);
 }

 return shardList;
}
