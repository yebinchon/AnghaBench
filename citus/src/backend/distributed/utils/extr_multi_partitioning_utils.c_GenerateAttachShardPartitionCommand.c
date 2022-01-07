
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_8__ {scalar_t__ relationId; int shardId; } ;
struct TYPE_7__ {char* data; } ;
typedef TYPE_1__* StringInfo ;
typedef TYPE_2__ ShardInterval ;
typedef scalar_t__ Oid ;


 int ColocatedShardIdInRelation (scalar_t__,int) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 char* GenerateAlterTableAttachPartitionCommand (scalar_t__) ;
 int INVALID_SHARD_ID ;
 scalar_t__ InvalidOid ;
 scalar_t__ PartitionParentOid (scalar_t__) ;
 int ShardIndex (TYPE_2__*) ;
 int WORKER_APPLY_INTER_SHARD_DDL_COMMAND ;
 int appendStringInfo (TYPE_1__*,int ,int ,char*,int ,char*,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 char* get_namespace_name (scalar_t__) ;
 scalar_t__ get_rel_namespace (scalar_t__) ;
 TYPE_1__* makeStringInfo () ;
 char* quote_literal_cstr (char*) ;

char *
GenerateAttachShardPartitionCommand(ShardInterval *shardInterval)
{
 Oid schemaId = get_rel_namespace(shardInterval->relationId);
 char *schemaName = get_namespace_name(schemaId);
 char *escapedSchemaName = quote_literal_cstr(schemaName);

 char *command = GenerateAlterTableAttachPartitionCommand(shardInterval->relationId);
 char *escapedCommand = quote_literal_cstr(command);
 int shardIndex = ShardIndex(shardInterval);

 Oid parentSchemaId = InvalidOid;
 char *parentSchemaName = ((void*)0);
 char *escapedParentSchemaName = ((void*)0);
 uint64 parentShardId = INVALID_SHARD_ID;

 StringInfo attachPartitionCommand = makeStringInfo();

 Oid parentRelationId = PartitionParentOid(shardInterval->relationId);
 if (parentRelationId == InvalidOid)
 {
  ereport(ERROR, (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("cannot attach partition"),
      errdetail("Referenced relation cannot be found.")));
 }

 parentSchemaId = get_rel_namespace(parentRelationId);
 parentSchemaName = get_namespace_name(parentSchemaId);
 escapedParentSchemaName = quote_literal_cstr(parentSchemaName);
 parentShardId = ColocatedShardIdInRelation(parentRelationId, shardIndex);

 appendStringInfo(attachPartitionCommand,
      WORKER_APPLY_INTER_SHARD_DDL_COMMAND, parentShardId,
      escapedParentSchemaName, shardInterval->shardId,
      escapedSchemaName, escapedCommand);

 return attachPartitionCommand->data;
}
