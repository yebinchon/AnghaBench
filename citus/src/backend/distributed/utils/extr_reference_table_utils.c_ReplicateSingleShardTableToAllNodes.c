
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_4__ {int shardId; } ;
typedef TYPE_1__ ShardInterval ;
typedef int Oid ;
typedef int List ;


 int ConvertToReferenceTableMetadata (int ,int ) ;
 int * CopyShardForeignConstraintCommandList (TYPE_1__*) ;
 int CreateTableMetadataOnWorkers (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int * LoadShardIntervalList (int ) ;
 int * NIL ;
 int ReplicateShardToAllNodes (TYPE_1__*) ;
 scalar_t__ TableReferenced (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char*) ;
 int errmsg (char*) ;
 char* get_rel_name (int ) ;
 scalar_t__ linitial (int *) ;

__attribute__((used)) static void
ReplicateSingleShardTableToAllNodes(Oid relationId)
{
 List *shardIntervalList = LoadShardIntervalList(relationId);
 ShardInterval *shardInterval = (ShardInterval *) linitial(shardIntervalList);
 uint64 shardId = shardInterval->shardId;

 List *foreignConstraintCommandList = CopyShardForeignConstraintCommandList(
  shardInterval);

 if (foreignConstraintCommandList != NIL || TableReferenced(relationId))
 {
  char *relationName = get_rel_name(relationId);
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot upgrade to reference table"),
      errdetail("Relation \"%s\" is part of a foreign constraint. "
          "Foreign key constraints are not allowed "
          "from or to reference tables.", relationName)));
 }







 ReplicateShardToAllNodes(shardInterval);






 ConvertToReferenceTableMetadata(relationId, shardId);






 CreateTableMetadataOnWorkers(relationId);
}
