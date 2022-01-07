
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_6__ {int shardIntervalArrayLength; int* arrayOfPlacementArrayLengths; TYPE_1__** arrayOfPlacementArrays; } ;
struct TYPE_5__ {scalar_t__ groupId; } ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__ GroupShardPlacement ;
typedef TYPE_2__ DistTableCacheEntry ;


 TYPE_2__* DistributedTableCacheEntry (int ) ;
 int * NIL ;
 int * lappend (int *,TYPE_1__*) ;

List *
GroupShardPlacementsForTableOnGroup(Oid relationId, int32 groupId)
{
 DistTableCacheEntry *distTableCacheEntry = DistributedTableCacheEntry(relationId);
 List *resultList = NIL;

 int shardIndex = 0;
 int shardIntervalArrayLength = distTableCacheEntry->shardIntervalArrayLength;

 for (shardIndex = 0; shardIndex < shardIntervalArrayLength; shardIndex++)
 {
  GroupShardPlacement *placementArray =
   distTableCacheEntry->arrayOfPlacementArrays[shardIndex];
  int numberOfPlacements =
   distTableCacheEntry->arrayOfPlacementArrayLengths[shardIndex];
  int placementIndex = 0;

  for (placementIndex = 0; placementIndex < numberOfPlacements; placementIndex++)
  {
   GroupShardPlacement *placement = &placementArray[placementIndex];

   if (placement->groupId == groupId)
   {
    resultList = lappend(resultList, placement);
   }
  }
 }

 return resultList;
}
