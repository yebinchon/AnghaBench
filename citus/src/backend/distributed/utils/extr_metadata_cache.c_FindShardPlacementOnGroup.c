
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64 ;
typedef scalar_t__ int32 ;
struct TYPE_9__ {int* arrayOfPlacementArrayLengths; TYPE_2__** arrayOfPlacementArrays; } ;
struct TYPE_8__ {scalar_t__ groupId; } ;
struct TYPE_7__ {size_t shardIndex; TYPE_3__* tableEntry; } ;
typedef int ShardPlacement ;
typedef TYPE_1__ ShardCacheEntry ;
typedef TYPE_2__ GroupShardPlacement ;
typedef TYPE_3__ DistTableCacheEntry ;


 TYPE_1__* LookupShardCacheEntry (int ) ;
 int * ResolveGroupShardPlacement (TYPE_2__*,TYPE_1__*) ;

ShardPlacement *
FindShardPlacementOnGroup(int32 groupId, uint64 shardId)
{
 ShardCacheEntry *shardEntry = ((void*)0);
 DistTableCacheEntry *tableEntry = ((void*)0);
 GroupShardPlacement *placementArray = ((void*)0);
 int numberOfPlacements = 0;
 ShardPlacement *placementOnNode = ((void*)0);
 int placementIndex = 0;

 shardEntry = LookupShardCacheEntry(shardId);
 tableEntry = shardEntry->tableEntry;
 placementArray = tableEntry->arrayOfPlacementArrays[shardEntry->shardIndex];
 numberOfPlacements = tableEntry->arrayOfPlacementArrayLengths[shardEntry->shardIndex];

 for (placementIndex = 0; placementIndex < numberOfPlacements; placementIndex++)
 {
  GroupShardPlacement *placement = &placementArray[placementIndex];

  if (placement->groupId == groupId)
  {
   placementOnNode = ResolveGroupShardPlacement(placement, shardEntry);
   break;
  }
 }

 return placementOnNode;
}
