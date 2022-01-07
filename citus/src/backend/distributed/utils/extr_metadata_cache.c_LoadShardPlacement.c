
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int ShardPlacement ;
typedef int ShardCacheEntry ;
typedef int GroupShardPlacement ;


 int * LoadGroupShardPlacement (int ,int ) ;
 int * LookupShardCacheEntry (int ) ;
 int * ResolveGroupShardPlacement (int *,int *) ;

ShardPlacement *
LoadShardPlacement(uint64 shardId, uint64 placementId)
{
 ShardCacheEntry *shardEntry = ((void*)0);
 GroupShardPlacement *groupPlacement = ((void*)0);
 ShardPlacement *nodePlacement = ((void*)0);

 shardEntry = LookupShardCacheEntry(shardId);
 groupPlacement = LoadGroupShardPlacement(shardId, placementId);
 nodePlacement = ResolveGroupShardPlacement(groupPlacement, shardEntry);

 return nodePlacement;
}
