
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_5__ {int relationId; int isDistributedTable; } ;
struct TYPE_4__ {TYPE_2__* tableEntry; } ;
typedef TYPE_1__ ShardCacheEntry ;
typedef int Oid ;
typedef TYPE_2__ DistTableCacheEntry ;


 int Assert (int ) ;
 TYPE_1__* LookupShardCacheEntry (int ) ;

Oid
RelationIdForShard(uint64 shardId)
{
 ShardCacheEntry *shardEntry = ((void*)0);
 DistTableCacheEntry *tableEntry = ((void*)0);

 shardEntry = LookupShardCacheEntry(shardId);

 tableEntry = shardEntry->tableEntry;

 Assert(tableEntry->isDistributedTable);

 return tableEntry->relationId;
}
