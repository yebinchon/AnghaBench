
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_2__ {scalar_t__ shardId; } ;
typedef TYPE_1__ GroupShardPlacement ;



int
CompareShardPlacementsByShardId(const void *leftElement, const void *rightElement)
{
 GroupShardPlacement *left = *((GroupShardPlacement **) leftElement);
 GroupShardPlacement *right = *((GroupShardPlacement **) rightElement);
 int64 leftShardId = left->shardId;
 int64 rightShardId = right->shardId;


 if (leftShardId > rightShardId)
 {
  return 1;
 }
 else if (leftShardId < rightShardId)
 {
  return -1;
 }
 else
 {
  return 0;
 }
}
