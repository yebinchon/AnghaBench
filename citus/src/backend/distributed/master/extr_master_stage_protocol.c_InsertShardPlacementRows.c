
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef int int64 ;
struct TYPE_2__ {int groupId; } ;
typedef TYPE_1__ WorkerNode ;
typedef int ShardPlacement ;
typedef int RelayFileState ;
typedef int Oid ;
typedef int List ;


 int FILE_FINALIZED ;
 int INVALID_PLACEMENT_ID ;
 int InsertShardPlacementRow (int ,int ,int const,int const,int ) ;
 int * LoadShardPlacement (int ,int ) ;
 int * NIL ;
 int * lappend (int *,int *) ;
 int list_length (int *) ;
 scalar_t__ list_nth (int *,int) ;

List *
InsertShardPlacementRows(Oid relationId, int64 shardId, List *workerNodeList,
       int workerStartIndex, int replicationFactor)
{
 int workerNodeCount = list_length(workerNodeList);
 int attemptNumber = 0;
 int placementsInserted = 0;
 List *insertedShardPlacements = NIL;

 for (attemptNumber = 0; attemptNumber < replicationFactor; attemptNumber++)
 {
  int workerNodeIndex = (workerStartIndex + attemptNumber) % workerNodeCount;
  WorkerNode *workerNode = (WorkerNode *) list_nth(workerNodeList, workerNodeIndex);
  uint32 nodeGroupId = workerNode->groupId;
  const RelayFileState shardState = FILE_FINALIZED;
  const uint64 shardSize = 0;
  uint64 shardPlacementId = 0;
  ShardPlacement *shardPlacement = ((void*)0);

  shardPlacementId = InsertShardPlacementRow(shardId, INVALID_PLACEMENT_ID,
               shardState, shardSize, nodeGroupId);
  shardPlacement = LoadShardPlacement(shardId, shardPlacementId);
  insertedShardPlacements = lappend(insertedShardPlacements, shardPlacement);

  placementsInserted++;
  if (placementsInserted >= replicationFactor)
  {
   break;
  }
 }

 return insertedShardPlacements;
}
