
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_2__ {scalar_t__ placementId; } ;
typedef TYPE_1__ ShardPlacement ;



int
CompareShardPlacements(const void *leftElement, const void *rightElement)
{
 const ShardPlacement *leftPlacement = *((const ShardPlacement **) leftElement);
 const ShardPlacement *rightPlacement = *((const ShardPlacement **) rightElement);

 uint64 leftPlacementId = leftPlacement->placementId;
 uint64 rightPlacementId = rightPlacement->placementId;

 if (leftPlacementId < rightPlacementId)
 {
  return -1;
 }
 else if (leftPlacementId > rightPlacementId)
 {
  return 1;
 }
 else
 {
  return 0;
 }
}
