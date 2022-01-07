
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
typedef int text ;
typedef int Var ;
typedef int Oid ;


 int CreateReferenceTableColocationId () ;
 int DISTRIBUTE_BY_NONE ;
 int DeleteColocationGroupIfNoTablesBelong (int ) ;
 int DeletePartitionRow (int ) ;
 int DeleteShardRow (int ) ;
 int InsertIntoPgDistPartition (int ,int ,int *,int ,int ) ;
 int InsertShardRow (int ,int ,char,int *,int *) ;
 int REPLICATION_MODEL_2PC ;
 char ShardStorageType (int ) ;
 int TableColocationId (int ) ;

__attribute__((used)) static void
ConvertToReferenceTableMetadata(Oid relationId, uint64 shardId)
{
 uint32 currentColocationId = TableColocationId(relationId);
 uint32 newColocationId = CreateReferenceTableColocationId();
 Var *distributionColumn = ((void*)0);
 char shardStorageType = ShardStorageType(relationId);
 text *shardMinValue = ((void*)0);
 text *shardMaxValue = ((void*)0);


 DeletePartitionRow(relationId);
 DeleteColocationGroupIfNoTablesBelong(currentColocationId);
 DeleteShardRow(shardId);


 InsertIntoPgDistPartition(relationId, DISTRIBUTE_BY_NONE, distributionColumn,
         newColocationId, REPLICATION_MODEL_2PC);
 InsertShardRow(relationId, shardId, shardStorageType, shardMinValue, shardMaxValue);
}
