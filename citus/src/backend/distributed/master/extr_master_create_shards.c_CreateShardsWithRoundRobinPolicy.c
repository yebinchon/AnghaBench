
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef int text ;
typedef int int64 ;
typedef int int32 ;
struct TYPE_3__ {scalar_t__ replicationModel; int relationId; } ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__ DistTableCacheEntry ;


 int CheckHashPartitionedTable (int ) ;
 int CompareWorkerNodes ;
 int CreateShardsOnWorkers (int ,int *,int,int) ;
 int DistNodeRelationId () ;
 TYPE_1__* DistributedTableCacheEntry (int ) ;
 int * DistributedTablePlacementNodeList (int ) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int EnsureTableOwner (int ) ;
 int ExclusiveLock ;
 int GetNextShardId () ;
 int HASH_TOKEN_COUNT ;
 int INT32_MAX ;
 int INT32_MIN ;
 int * InsertShardPlacementRows (int ,int,int *,int,int) ;
 int InsertShardRow (int ,int,char,int *,int *) ;
 int * IntegerToText (int) ;
 int * LoadShardList (int ) ;
 int LockRelationOid (int ,int ) ;
 int LockShardDistributionMetadata (int,int ) ;
 int * NIL ;
 int NoLock ;
 scalar_t__ REPLICATION_MODEL_STREAMING ;
 int RowShareLock ;
 char ShardStorageType (int ) ;
 int * SortList (int *,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char*) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 char* get_rel_name (int ) ;
 int * list_concat (int *,int *) ;
 int list_length (int *) ;

void
CreateShardsWithRoundRobinPolicy(Oid distributedTableId, int32 shardCount,
         int32 replicationFactor, bool useExclusiveConnections)
{
 char shardStorageType = 0;
 List *workerNodeList = NIL;
 int32 workerNodeCount = 0;
 uint32 placementAttemptCount = 0;
 uint64 hashTokenIncrement = 0;
 List *existingShardList = NIL;
 int64 shardIndex = 0;
 DistTableCacheEntry *cacheEntry = DistributedTableCacheEntry(distributedTableId);
 bool colocatedShard = 0;
 List *insertedShardPlacements = NIL;


 CheckHashPartitionedTable(distributedTableId);







 EnsureTableOwner(distributedTableId);


 LockRelationOid(distributedTableId, ExclusiveLock);


 existingShardList = LoadShardList(distributedTableId);
 if (existingShardList != NIL)
 {
  char *tableName = get_rel_name(distributedTableId);
  ereport(ERROR, (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("table \"%s\" has already had shards created for it",
          tableName)));
 }


 if (shardCount <= 0)
 {
  ereport(ERROR, (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("shard_count must be positive")));
 }


 if (replicationFactor <= 0)
 {
  ereport(ERROR, (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("replication_factor must be positive")));
 }


 if (cacheEntry->replicationModel == REPLICATION_MODEL_STREAMING &&
  replicationFactor > 1)
 {
  char *relationName = get_rel_name(cacheEntry->relationId);
  ereport(ERROR, (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("using replication factor %d with the streaming "
          "replication model is not supported",
          replicationFactor),
      errdetail("The table %s is marked as streaming replicated and "
          "the shard replication factor of streaming replicated "
          "tables must be 1.", relationName),
      errhint("Use replication factor 1.")));
 }


 hashTokenIncrement = HASH_TOKEN_COUNT / shardCount;


 LockRelationOid(DistNodeRelationId(), RowShareLock);


 workerNodeList = DistributedTablePlacementNodeList(NoLock);
 workerNodeList = SortList(workerNodeList, CompareWorkerNodes);

 workerNodeCount = list_length(workerNodeList);
 if (replicationFactor > workerNodeCount)
 {
  ereport(ERROR, (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("replication_factor (%d) exceeds number of worker nodes "
          "(%d)", replicationFactor, workerNodeCount),
      errhint("Add more worker nodes or try again with a lower "
        "replication factor.")));
 }


 placementAttemptCount = (uint32) replicationFactor;
 if (workerNodeCount > replicationFactor)
 {
  placementAttemptCount++;
 }


 shardStorageType = ShardStorageType(distributedTableId);

 for (shardIndex = 0; shardIndex < shardCount; shardIndex++)
 {
  uint32 roundRobinNodeIndex = shardIndex % workerNodeCount;


  text *minHashTokenText = ((void*)0);
  text *maxHashTokenText = ((void*)0);
  int32 shardMinHashToken = INT32_MIN + (shardIndex * hashTokenIncrement);
  int32 shardMaxHashToken = shardMinHashToken + (hashTokenIncrement - 1);
  uint64 shardId = GetNextShardId();
  List *currentInsertedShardPlacements = NIL;


  if (shardIndex == (shardCount - 1))
  {
   shardMaxHashToken = INT32_MAX;
  }


  minHashTokenText = IntegerToText(shardMinHashToken);
  maxHashTokenText = IntegerToText(shardMaxHashToken);







  LockShardDistributionMetadata(shardId, ExclusiveLock);

  InsertShardRow(distributedTableId, shardId, shardStorageType,
        minHashTokenText, maxHashTokenText);

  currentInsertedShardPlacements = InsertShardPlacementRows(distributedTableId,
                  shardId,
                  workerNodeList,
                  roundRobinNodeIndex,
                  replicationFactor);
  insertedShardPlacements = list_concat(insertedShardPlacements,
             currentInsertedShardPlacements);
 }

 CreateShardsOnWorkers(distributedTableId, insertedShardPlacements,
        useExclusiveConnections, colocatedShard);
}
