
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_3__ {int vartype; } ;
typedef TYPE_1__ Var ;
typedef int * Relation ;
typedef int Oid ;


 int CheckDistributionColumnType (int ,int ) ;
 int CheckReplicationModel (int ,int ) ;
 scalar_t__ CreateColocationGroup (scalar_t__,scalar_t__,int ) ;
 int DeleteColocationGroupIfNoTablesBelong (scalar_t__) ;
 int DistColocationRelationId () ;
 TYPE_1__* DistPartitionKey (int ) ;
 int ErrorIfShardPlacementsNotColocated (int ,int ) ;
 int ExclusiveLock ;
 scalar_t__ INVALID_COLOCATION_ID ;
 int InvalidOid ;
 int NoLock ;
 scalar_t__ ShardIntervalCount (int ) ;
 scalar_t__ TableColocationId (int ) ;
 scalar_t__ TableShardReplicationFactor (int ) ;
 int UpdateRelationColocationGroup (int ,scalar_t__) ;
 int heap_close (int *,int ) ;
 int * heap_open (int ,int ) ;

__attribute__((used)) static void
MarkTablesColocated(Oid sourceRelationId, Oid targetRelationId)
{
 uint32 sourceColocationId = INVALID_COLOCATION_ID;
 uint32 targetColocationId = INVALID_COLOCATION_ID;
 Relation pgDistColocation = ((void*)0);

 CheckReplicationModel(sourceRelationId, targetRelationId);
 CheckDistributionColumnType(sourceRelationId, targetRelationId);






 pgDistColocation = heap_open(DistColocationRelationId(), ExclusiveLock);


 ErrorIfShardPlacementsNotColocated(sourceRelationId, targetRelationId);





 sourceColocationId = TableColocationId(sourceRelationId);
 if (sourceColocationId == INVALID_COLOCATION_ID)
 {
  uint32 shardCount = ShardIntervalCount(sourceRelationId);
  uint32 shardReplicationFactor = TableShardReplicationFactor(sourceRelationId);

  Var *sourceDistributionColumn = DistPartitionKey(sourceRelationId);
  Oid sourceDistributionColumnType = InvalidOid;


  if (sourceDistributionColumn != ((void*)0))
  {
   sourceDistributionColumnType = sourceDistributionColumn->vartype;
  }

  sourceColocationId = CreateColocationGroup(shardCount, shardReplicationFactor,
               sourceDistributionColumnType);
  UpdateRelationColocationGroup(sourceRelationId, sourceColocationId);
 }

 targetColocationId = TableColocationId(targetRelationId);


 UpdateRelationColocationGroup(targetRelationId, sourceColocationId);


 DeleteColocationGroupIfNoTablesBelong(targetColocationId);

 heap_close(pgDistColocation, NoLock);
}
