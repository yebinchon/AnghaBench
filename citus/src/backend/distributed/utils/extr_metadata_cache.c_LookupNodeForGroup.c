
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_5__ {scalar_t__ groupId; } ;
typedef TYPE_1__ WorkerNode ;


 int ERROR ;
 int FATAL ;
 scalar_t__ NodeIsReadable (TYPE_1__*) ;
 int PrepareWorkerNodeCache () ;
 int ReadFromSecondaries ;


 TYPE_1__** WorkerNodeArray ;
 int WorkerNodeCount ;
 int ereport (int ,int ) ;
 int errmsg (char*,...) ;

WorkerNode *
LookupNodeForGroup(int32 groupId)
{
 bool foundAnyNodes = 0;
 int workerNodeIndex = 0;

 PrepareWorkerNodeCache();

 for (workerNodeIndex = 0; workerNodeIndex < WorkerNodeCount; workerNodeIndex++)
 {
  WorkerNode *workerNode = WorkerNodeArray[workerNodeIndex];
  int32 workerNodeGroupId = workerNode->groupId;
  if (workerNodeGroupId != groupId)
  {
   continue;
  }

  foundAnyNodes = 1;

  if (NodeIsReadable(workerNode))
  {
   return workerNode;
  }
 }

 if (!foundAnyNodes)
 {
  ereport(ERROR, (errmsg("there is a shard placement in node group %d but "
          "there are no nodes in that group", groupId)));
 }

 switch (ReadFromSecondaries)
 {
  case 128:
  {
   ereport(ERROR, (errmsg("node group %d does not have a primary node",
           groupId)));
   return ((void*)0);
  }

  case 129:
  {
   ereport(ERROR, (errmsg("node group %d does not have a secondary node",
           groupId)));
   return ((void*)0);
  }

  default:
  {
   ereport(FATAL, (errmsg("unrecognized value for use_secondary_nodes")));
   return ((void*)0);
  }
 }
}
