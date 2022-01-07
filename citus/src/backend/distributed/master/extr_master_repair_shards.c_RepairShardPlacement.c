
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int64 ;
typedef int int32 ;
struct TYPE_14__ {int relationId; } ;
struct TYPE_13__ {int placementId; } ;
struct TYPE_12__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef TYPE_2__ ShardPlacement ;
typedef TYPE_3__ ShardInterval ;
typedef int Oid ;
typedef int List ;


 int AccessShareLock ;
 char* ConstructQualifiedShardName (TYPE_3__*) ;
 int * CopyPartitionShardsCommandList (TYPE_3__*,char*,int ) ;
 int * CopyShardCommandList (TYPE_3__*,char*,int ,int) ;
 int * CopyShardForeignConstraintCommandList (TYPE_3__*) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int EnsureNoModificationsHaveBeenDone () ;
 int EnsurePartitionTableNotReplicated (int ) ;
 int EnsureShardCanBeRepaired (int ,char*,int ,char*,int ) ;
 int EnsureTableOwner (int ) ;
 int ExclusiveLock ;
 int FILE_FINALIZED ;
 TYPE_3__* LoadShardInterval (int ) ;
 int LockReferencedReferenceShardDistributionMetadata (int ,int ) ;
 int LockRelationOid (int ,int ) ;
 int LockShardDistributionMetadata (int ,int ) ;
 int * NIL ;
 int PartitionedTableNoLock (int ) ;
 char RELKIND_FOREIGN_TABLE ;
 TYPE_2__* SearchShardPlacementInList (int *,char*,int ,int) ;
 int SendCommandListToWorkerInSingleTransaction (char*,int ,char*,int *) ;
 int * ShardPlacementList (int ) ;
 char* TableOwner (int ) ;
 int UpdateShardPlacementState (int ,int ) ;
 int WORKER_APPEND_TABLE_TO_SHARD ;
 int appendStringInfo (TYPE_1__*,int ,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char*) ;
 int errmsg (char*) ;
 char* get_rel_name (int ) ;
 char get_rel_relkind (int ) ;
 int * lappend (int *,int ) ;
 int * list_concat (int *,int *) ;
 TYPE_1__* makeStringInfo () ;
 int quote_literal_cstr (char*) ;

__attribute__((used)) static void
RepairShardPlacement(int64 shardId, char *sourceNodeName, int32 sourceNodePort,
      char *targetNodeName, int32 targetNodePort)
{
 ShardInterval *shardInterval = LoadShardInterval(shardId);
 Oid distributedTableId = shardInterval->relationId;

 char relationKind = get_rel_relkind(distributedTableId);
 char *tableOwner = TableOwner(shardInterval->relationId);
 bool missingOk = 0;
 bool includeData = 0;
 bool partitionedTable = 0;

 List *ddlCommandList = NIL;
 List *foreignConstraintCommandList = NIL;
 List *placementList = NIL;
 ShardPlacement *placement = ((void*)0);


 LockRelationOid(distributedTableId, AccessShareLock);

 EnsureTableOwner(distributedTableId);

 if (relationKind == RELKIND_FOREIGN_TABLE)
 {
  char *relationName = get_rel_name(distributedTableId);
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot repair shard"),
      errdetail("Table %s is a foreign table. Repairing "
          "shards backed by foreign tables is "
          "not supported.", relationName)));
 }
 EnsurePartitionTableNotReplicated(distributedTableId);
 LockReferencedReferenceShardDistributionMetadata(shardId, ExclusiveLock);





 LockShardDistributionMetadata(shardId, ExclusiveLock);





 EnsureShardCanBeRepaired(shardId, sourceNodeName, sourceNodePort, targetNodeName,
        targetNodePort);





 partitionedTable = PartitionedTableNoLock(distributedTableId);
 includeData = !partitionedTable;


 ddlCommandList =
  CopyShardCommandList(shardInterval, sourceNodeName, sourceNodePort, includeData);
 foreignConstraintCommandList = CopyShardForeignConstraintCommandList(shardInterval);
 ddlCommandList = list_concat(ddlCommandList, foreignConstraintCommandList);
 if (partitionedTable)
 {
  List *partitionCommandList = NIL;

  char *shardName = ConstructQualifiedShardName(shardInterval);
  StringInfo copyShardDataCommand = makeStringInfo();

  partitionCommandList =
   CopyPartitionShardsCommandList(shardInterval, sourceNodeName, sourceNodePort);
  ddlCommandList = list_concat(ddlCommandList, partitionCommandList);


  appendStringInfo(copyShardDataCommand, WORKER_APPEND_TABLE_TO_SHARD,
       quote_literal_cstr(shardName),
       quote_literal_cstr(shardName),
       quote_literal_cstr(sourceNodeName),
       sourceNodePort);
  ddlCommandList = lappend(ddlCommandList, copyShardDataCommand->data);
 }

 EnsureNoModificationsHaveBeenDone();
 SendCommandListToWorkerInSingleTransaction(targetNodeName, targetNodePort, tableOwner,
              ddlCommandList);


 placementList = ShardPlacementList(shardId);
 placement = SearchShardPlacementInList(placementList, targetNodeName, targetNodePort,
             missingOk);
 UpdateShardPlacementState(placement->placementId, FILE_FINALIZED);
}
