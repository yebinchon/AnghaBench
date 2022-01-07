
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int text ;
typedef int Oid ;
typedef int List ;


 int CompareWorkerNodes ;
 int CreateShardsOnWorkers (int ,int *,int,int) ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int EnsureTableOwner (int ) ;
 int ExclusiveLock ;
 int GetNextShardId () ;
 int INVALID_SHARD_ID ;
 int * InsertShardPlacementRows (int ,int ,int *,int,int) ;
 int InsertShardRow (int ,int ,char,int *,int *) ;
 int * LoadShardList (int ) ;
 int LockRelationOid (int ,int ) ;
 int LockShardDistributionMetadata (int ,int ) ;
 int * NIL ;
 int * ReferenceTablePlacementNodeList (int ) ;
 int ReferenceTableReplicationFactor () ;
 char ShardStorageType (int ) ;
 int ShareLock ;
 int * SortList (int *,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 char* get_rel_name (int ) ;

void
CreateReferenceTableShard(Oid distributedTableId)
{
 char shardStorageType = 0;
 List *nodeList = NIL;
 List *existingShardList = NIL;
 uint64 shardId = INVALID_SHARD_ID;
 int workerStartIndex = 0;
 int replicationFactor = 0;
 text *shardMinValue = ((void*)0);
 text *shardMaxValue = ((void*)0);
 bool useExclusiveConnection = 0;
 bool colocatedShard = 0;
 List *insertedShardPlacements = NIL;







 EnsureTableOwner(distributedTableId);


 LockRelationOid(distributedTableId, ExclusiveLock);


 shardStorageType = ShardStorageType(distributedTableId);


 existingShardList = LoadShardList(distributedTableId);
 if (existingShardList != NIL)
 {
  char *tableName = get_rel_name(distributedTableId);
  ereport(ERROR, (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("table \"%s\" has already had shards created for it",
          tableName)));
 }





 nodeList = ReferenceTablePlacementNodeList(ShareLock);
 nodeList = SortList(nodeList, CompareWorkerNodes);

 replicationFactor = ReferenceTableReplicationFactor();


 shardId = GetNextShardId();







 LockShardDistributionMetadata(shardId, ExclusiveLock);

 InsertShardRow(distributedTableId, shardId, shardStorageType, shardMinValue,
       shardMaxValue);

 insertedShardPlacements = InsertShardPlacementRows(distributedTableId, shardId,
                nodeList, workerStartIndex,
                replicationFactor);

 CreateShardsOnWorkers(distributedTableId, insertedShardPlacements,
        useExclusiveConnection, colocatedShard);
}
