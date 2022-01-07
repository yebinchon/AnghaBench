
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef int int32 ;
struct TYPE_8__ {int nodeId; } ;
typedef TYPE_1__ WorkerNode ;
struct TYPE_9__ {scalar_t__ groupId; int shouldHaveShards; int hasMetadata; scalar_t__ nodeRole; int nodeCluster; } ;
typedef TYPE_2__ NodeMetadata ;
typedef int List ;


 scalar_t__ COORDINATOR_GROUP_ID ;
 scalar_t__ CountPrimariesWithMetadata () ;
 int DistNodeRelationId () ;
 int ERROR ;
 int EnsureCoordinator () ;
 int ExclusiveLock ;
 TYPE_1__* FindWorkerNodeAnyCluster (char*,int ) ;
 scalar_t__ GetNextGroupId () ;
 int GetNextNodeId () ;
 scalar_t__ INVALID_GROUP_ID ;
 int InsertNodeRow (int,char*,int ,TYPE_2__*) ;
 scalar_t__ InvalidOid ;
 int LockRelationOid (int ,int ) ;
 char* NodeDeleteCommand (int) ;
 char* NodeListInsertCommand (int *) ;
 TYPE_1__* PrimaryNodeForGroup (scalar_t__,int *) ;
 scalar_t__ PrimaryNodeRoleId () ;
 int SendCommandToWorkers (int ,char*) ;
 int WORKERS_WITH_METADATA ;
 int WORKER_DEFAULT_CLUSTER ;
 int WORKER_LENGTH ;
 int ereport (int ,int ) ;
 int errmsg (char*,...) ;
 int * list_make1 (TYPE_1__*) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static int
AddNodeMetadata(char *nodeName, int32 nodePort,
    NodeMetadata *nodeMetadata,
    bool *nodeAlreadyExists)
{
 int nextNodeIdInt = 0;
 WorkerNode *workerNode = ((void*)0);
 char *nodeDeleteCommand = ((void*)0);
 uint32 primariesWithMetadata = 0;

 EnsureCoordinator();

 *nodeAlreadyExists = 0;






 LockRelationOid(DistNodeRelationId(), ExclusiveLock);

 workerNode = FindWorkerNodeAnyCluster(nodeName, nodePort);
 if (workerNode != ((void*)0))
 {

  *nodeAlreadyExists = 1;

  return workerNode->nodeId;
 }


 if (nodeMetadata->groupId == INVALID_GROUP_ID)
 {
  nodeMetadata->groupId = GetNextGroupId();
 }


 if (nodeMetadata->groupId == COORDINATOR_GROUP_ID)
 {
  nodeMetadata->shouldHaveShards = 0;
  nodeMetadata->hasMetadata = 1;
 }


 if (nodeMetadata->nodeRole != InvalidOid && nodeMetadata->nodeRole ==
  PrimaryNodeRoleId())
 {
  WorkerNode *existingPrimaryNode = PrimaryNodeForGroup(nodeMetadata->groupId,
                 ((void*)0));

  if (existingPrimaryNode != ((void*)0))
  {
   ereport(ERROR, (errmsg("group %d already has a primary node",
           nodeMetadata->groupId)));
  }
 }

 if (nodeMetadata->nodeRole == PrimaryNodeRoleId())
 {
  if (strncmp(nodeMetadata->nodeCluster,
     WORKER_DEFAULT_CLUSTER,
     WORKER_LENGTH) != 0)
  {
   ereport(ERROR, (errmsg("primaries must be added to the default cluster")));
  }
 }


 nextNodeIdInt = GetNextNodeId();

 InsertNodeRow(nextNodeIdInt, nodeName, nodePort, nodeMetadata);

 workerNode = FindWorkerNodeAnyCluster(nodeName, nodePort);


 nodeDeleteCommand = NodeDeleteCommand(workerNode->nodeId);
 SendCommandToWorkers(WORKERS_WITH_METADATA, nodeDeleteCommand);


 primariesWithMetadata = CountPrimariesWithMetadata();
 if (primariesWithMetadata != 0)
 {
  List *workerNodeList = list_make1(workerNode);
  char *nodeInsertCommand = NodeListInsertCommand(workerNodeList);

  SendCommandToWorkers(WORKERS_WITH_METADATA, nodeInsertCommand);
 }

 return workerNode->nodeId;
}
