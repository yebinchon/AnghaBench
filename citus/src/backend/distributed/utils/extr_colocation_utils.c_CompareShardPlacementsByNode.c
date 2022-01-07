
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nodeId; } ;
typedef TYPE_1__ ShardPlacement ;



__attribute__((used)) static int
CompareShardPlacementsByNode(const void *leftElement, const void *rightElement)
{
 const ShardPlacement *leftPlacement = *((const ShardPlacement **) leftElement);
 const ShardPlacement *rightPlacement = *((const ShardPlacement **) rightElement);


 if (leftPlacement->nodeId < rightPlacement->nodeId)
 {
  return -1;
 }
 else if (leftPlacement->nodeId > rightPlacement->nodeId)
 {
  return 1;
 }
 else
 {
  return 0;
 }
}
