
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_5__ {int shardIntervalArrayLength; TYPE_1__** sortedShardIntervalArray; } ;
struct TYPE_4__ {int shardId; } ;
typedef TYPE_1__ ShardInterval ;
typedef int Oid ;
typedef int List ;
typedef TYPE_2__ DistTableCacheEntry ;


 int * AllocateUint64 (int ) ;
 TYPE_2__* DistributedTableCacheEntry (int ) ;
 int * NIL ;
 int * lappend (int *,int *) ;

List *
LoadShardList(Oid relationId)
{
 DistTableCacheEntry *cacheEntry = DistributedTableCacheEntry(relationId);
 List *shardList = NIL;
 int i = 0;

 for (i = 0; i < cacheEntry->shardIntervalArrayLength; i++)
 {
  ShardInterval *currentShardInterval = cacheEntry->sortedShardIntervalArray[i];
  uint64 *shardIdPointer = AllocateUint64(currentShardInterval->shardId);

  shardList = lappend(shardList, shardIdPointer);
 }

 return shardList;
}
