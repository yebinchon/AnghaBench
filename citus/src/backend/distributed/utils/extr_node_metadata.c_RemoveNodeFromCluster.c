
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_4__ {int workerName; int nodeId; int groupId; } ;
typedef TYPE_1__ WorkerNode ;


 int CloseNodeConnectionsAfterTransaction (int ,int ) ;
 int DeleteAllReferenceTablePlacementsFromNodeGroup (int ) ;
 int DeleteNodeRow (int ,int ) ;
 int ERROR ;
 TYPE_1__* ModifiableWorkerNode (char*,int ) ;
 char* NodeDeleteCommand (int ) ;
 scalar_t__ NodeGroupHasShardPlacements (int ,int) ;
 scalar_t__ NodeIsPrimary (TYPE_1__*) ;
 int SendCommandToWorkers (int ,char*) ;
 int WORKERS_WITH_METADATA ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
RemoveNodeFromCluster(char *nodeName, int32 nodePort)
{
 char *nodeDeleteCommand = ((void*)0);
 WorkerNode *workerNode = ModifiableWorkerNode(nodeName, nodePort);

 if (NodeIsPrimary(workerNode))
 {
  bool onlyConsiderActivePlacements = 0;





  DeleteAllReferenceTablePlacementsFromNodeGroup(workerNode->groupId);

  if (NodeGroupHasShardPlacements(workerNode->groupId,
          onlyConsiderActivePlacements))
  {
   ereport(ERROR, (errmsg("you cannot remove the primary node of a node group "
           "which has shard placements")));
  }
 }

 DeleteNodeRow(workerNode->workerName, nodePort);

 nodeDeleteCommand = NodeDeleteCommand(workerNode->nodeId);


 CloseNodeConnectionsAfterTransaction(workerNode->workerName, nodePort);

 SendCommandToWorkers(WORKERS_WITH_METADATA, nodeDeleteCommand);
}
