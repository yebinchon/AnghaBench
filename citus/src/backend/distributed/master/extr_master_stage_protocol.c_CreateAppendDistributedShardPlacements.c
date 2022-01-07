
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef int int64 ;
struct TYPE_5__ {char* workerName; int workerPort; int groupId; } ;
typedef TYPE_1__ WorkerNode ;
struct TYPE_6__ {int pgConn; } ;
typedef int RelayFileState ;
typedef int Oid ;
typedef TYPE_2__ MultiConnection ;
typedef int List ;


 scalar_t__ CONNECTION_OK ;
 int ERROR ;
 int ExecuteCriticalRemoteCommandList (TYPE_2__*,int *) ;
 int FILE_FINALIZED ;
 int FOR_DDL ;
 TYPE_2__* GetNodeUserDatabaseConnection (int ,char*,int ,char*,int *) ;
 int * GetTableDDLEvents (int ,int) ;
 int * GetTableForeignConstraintCommands (int ) ;
 int INVALID_PLACEMENT_ID ;
 int InsertShardPlacementRow (int ,int ,int const,int const,int ) ;
 int * NIL ;
 scalar_t__ PQstatus (int ) ;
 char* TableOwner (int ) ;
 int WARNING ;
 int * WorkerCreateShardCommandList (int ,int,int ,int *,int *) ;
 int ereport (int ,int ) ;
 int errmsg (char*,...) ;
 int list_length (int *) ;
 scalar_t__ list_nth (int *,int) ;

void
CreateAppendDistributedShardPlacements(Oid relationId, int64 shardId,
            List *workerNodeList, int replicationFactor)
{
 int attemptCount = replicationFactor;
 int workerNodeCount = list_length(workerNodeList);
 int placementsCreated = 0;
 int attemptNumber = 0;
 List *foreignConstraintCommandList = GetTableForeignConstraintCommands(relationId);
 bool includeSequenceDefaults = 0;
 List *ddlCommandList = GetTableDDLEvents(relationId, includeSequenceDefaults);
 uint32 connectionFlag = FOR_DDL;
 char *relationOwner = TableOwner(relationId);


 if (workerNodeCount > replicationFactor)
 {
  attemptCount++;
 }

 for (attemptNumber = 0; attemptNumber < attemptCount; attemptNumber++)
 {
  int workerNodeIndex = attemptNumber % workerNodeCount;
  WorkerNode *workerNode = (WorkerNode *) list_nth(workerNodeList, workerNodeIndex);
  uint32 nodeGroupId = workerNode->groupId;
  char *nodeName = workerNode->workerName;
  uint32 nodePort = workerNode->workerPort;
  int shardIndex = -1;
  const RelayFileState shardState = FILE_FINALIZED;
  const uint64 shardSize = 0;
  MultiConnection *connection =
   GetNodeUserDatabaseConnection(connectionFlag, nodeName, nodePort,
            relationOwner, ((void*)0));
  List *commandList = NIL;

  if (PQstatus(connection->pgConn) != CONNECTION_OK)
  {
   ereport(WARNING, (errmsg("could not connect to node \"%s:%u\"", nodeName,
          nodePort)));

   continue;
  }

  commandList = WorkerCreateShardCommandList(relationId, shardIndex, shardId,
               ddlCommandList,
               foreignConstraintCommandList);

  ExecuteCriticalRemoteCommandList(connection, commandList);

  InsertShardPlacementRow(shardId, INVALID_PLACEMENT_ID, shardState, shardSize,
        nodeGroupId);
  placementsCreated++;

  if (placementsCreated >= replicationFactor)
  {
   break;
  }
 }


 if (placementsCreated < replicationFactor)
 {
  ereport(ERROR, (errmsg("could only create %u of %u of required shard replicas",
          placementsCreated, replicationFactor)));
 }
}
