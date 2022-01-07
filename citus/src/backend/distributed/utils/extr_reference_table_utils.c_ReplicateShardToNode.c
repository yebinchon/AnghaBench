
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef int int32 ;
struct TYPE_8__ {int relationId; int shardId; } ;
struct TYPE_7__ {char* nodeName; scalar_t__ shardState; int placementId; int groupId; int nodePort; } ;
typedef TYPE_1__ ShardPlacement ;
typedef TYPE_2__ ShardInterval ;
typedef int List ;


 int * CopyShardCommandList (TYPE_2__*,char*,int ,int) ;
 int EnsureNoModificationsHaveBeenDone () ;
 scalar_t__ FILE_FINALIZED ;
 TYPE_1__* FinalizedShardPlacement (int ,int) ;
 int GetNextPlacementId () ;
 int GroupForNode (char*,int) ;
 int InsertShardPlacementRow (int ,int ,scalar_t__,int ,int ) ;
 int NOTICE ;
 char* PlacementUpsertCommand (int ,int ,scalar_t__,int ,int ) ;
 TYPE_1__* SearchShardPlacementInList (int *,char*,int,int) ;
 int SendCommandListToWorkerInSingleTransaction (char*,int,char*,int *) ;
 int SendCommandToWorkers (int ,char*) ;
 int * ShardPlacementList (int ) ;
 scalar_t__ ShouldSyncTableMetadata (int ) ;
 char* TableOwner (int ) ;
 int UpdateShardPlacementState (int ,scalar_t__) ;
 int WORKERS_WITH_METADATA ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ,char*,int) ;
 int get_rel_name (int ) ;

__attribute__((used)) static void
ReplicateShardToNode(ShardInterval *shardInterval, char *nodeName, int nodePort)
{
 uint64 shardId = shardInterval->shardId;

 bool missingOk = 0;
 ShardPlacement *sourceShardPlacement = FinalizedShardPlacement(shardId, missingOk);
 char *srcNodeName = sourceShardPlacement->nodeName;
 uint32 srcNodePort = sourceShardPlacement->nodePort;
 bool includeData = 1;
 List *ddlCommandList =
  CopyShardCommandList(shardInterval, srcNodeName, srcNodePort, includeData);

 List *shardPlacementList = ShardPlacementList(shardId);
 bool missingWorkerOk = 1;
 ShardPlacement *targetPlacement = SearchShardPlacementInList(shardPlacementList,
                 nodeName, nodePort,
                 missingWorkerOk);
 char *tableOwner = TableOwner(shardInterval->relationId);
 if (targetPlacement == ((void*)0) || targetPlacement->shardState != FILE_FINALIZED)
 {
  uint64 placementId = 0;
  int32 groupId = 0;

  ereport(NOTICE, (errmsg("Replicating reference table \"%s\" to the node %s:%d",
        get_rel_name(shardInterval->relationId), nodeName,
        nodePort)));

  EnsureNoModificationsHaveBeenDone();
  SendCommandListToWorkerInSingleTransaction(nodeName, nodePort, tableOwner,
               ddlCommandList);
  if (targetPlacement == ((void*)0))
  {
   groupId = GroupForNode(nodeName, nodePort);

   placementId = GetNextPlacementId();
   InsertShardPlacementRow(shardId, placementId, FILE_FINALIZED, 0, groupId);
  }
  else
  {
   groupId = targetPlacement->groupId;
   placementId = targetPlacement->placementId;
   UpdateShardPlacementState(placementId, FILE_FINALIZED);
  }
  if (ShouldSyncTableMetadata(shardInterval->relationId))
  {
   char *placementCommand = PlacementUpsertCommand(shardId, placementId,
               FILE_FINALIZED, 0,
               groupId);

   SendCommandToWorkers(WORKERS_WITH_METADATA, placementCommand);
  }
 }
}
