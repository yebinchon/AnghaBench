
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nodePort; int nodeName; } ;
typedef TYPE_1__ ShardPlacement ;


 int WORKER_LENGTH ;
 int strncmp (int ,int ,int ) ;

int
CompareShardPlacementsByWorker(const void *leftElement, const void *rightElement)
{
 const ShardPlacement *leftPlacement = *((const ShardPlacement **) leftElement);
 const ShardPlacement *rightPlacement = *((const ShardPlacement **) rightElement);

 int nodeNameCmp = strncmp(leftPlacement->nodeName, rightPlacement->nodeName,
         WORKER_LENGTH);
 if (nodeNameCmp != 0)
 {
  return nodeNameCmp;
 }
 else if (leftPlacement->nodePort > rightPlacement->nodePort)
 {
  return 1;
 }
 else if (leftPlacement->nodePort < rightPlacement->nodePort)
 {
  return -1;
 }

 return 0;
}
