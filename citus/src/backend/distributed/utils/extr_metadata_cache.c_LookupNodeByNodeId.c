
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_7__ {scalar_t__ nodeId; } ;
typedef TYPE_1__ WorkerNode ;


 int PrepareWorkerNodeCache () ;
 TYPE_1__** WorkerNodeArray ;
 int WorkerNodeCount ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* palloc0 (int) ;

WorkerNode *
LookupNodeByNodeId(uint32 nodeId)
{
 int workerNodeIndex = 0;

 PrepareWorkerNodeCache();

 for (workerNodeIndex = 0; workerNodeIndex < WorkerNodeCount; workerNodeIndex++)
 {
  WorkerNode *workerNode = WorkerNodeArray[workerNodeIndex];
  if (workerNode->nodeId == nodeId)
  {
   WorkerNode *workerNodeCopy = palloc0(sizeof(WorkerNode));
   memcpy(workerNodeCopy, workerNode, sizeof(WorkerNode));

   return workerNodeCopy;
  }
 }

 return ((void*)0);
}
