
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WorkerNode ;


 scalar_t__ NodeIsPrimary (int *) ;
 scalar_t__ NodeIsSecondary (int *) ;
 scalar_t__ ReadFromSecondaries ;
 scalar_t__ USE_SECONDARY_NODES_ALWAYS ;
 scalar_t__ USE_SECONDARY_NODES_NEVER ;

bool
NodeIsReadable(WorkerNode *workerNode)
{
 if (ReadFromSecondaries == USE_SECONDARY_NODES_NEVER &&
  NodeIsPrimary(workerNode))
 {
  return 1;
 }

 if (ReadFromSecondaries == USE_SECONDARY_NODES_ALWAYS &&
  NodeIsSecondary(workerNode))
 {
  return 1;
 }

 return 0;
}
