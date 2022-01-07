
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_6__ {int partitionColumnIndex; int tableMetadata; int distributedRelationId; int * columnCoercionPaths; } ;
struct TYPE_5__ {int shardId; } ;
typedef TYPE_1__ ShardInterval ;
typedef int Oid ;
typedef int Datum ;
typedef int CopyCoercionData ;
typedef TYPE_2__ CitusCopyDestReceiver ;


 int CoerceColumnValue (int ,int *) ;
 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 TYPE_1__* FindShardInterval (int ,int ) ;
 int INVALID_PARTITION_COLUMN_INDEX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 char* get_namespace_name (int ) ;
 char* get_rel_name (int ) ;
 int get_rel_namespace (int ) ;
 char* quote_qualified_identifier (char*,char*) ;

__attribute__((used)) static uint64
ShardIdForTuple(CitusCopyDestReceiver *copyDest, Datum *columnValues, bool *columnNulls)
{
 int partitionColumnIndex = copyDest->partitionColumnIndex;
 Datum partitionColumnValue = 0;
 CopyCoercionData *columnCoercionPaths = copyDest->columnCoercionPaths;
 ShardInterval *shardInterval = ((void*)0);
 if (partitionColumnIndex != INVALID_PARTITION_COLUMN_INDEX)
 {
  CopyCoercionData *coercePath = &columnCoercionPaths[partitionColumnIndex];

  if (columnNulls[partitionColumnIndex])
  {
   Oid relationId = copyDest->distributedRelationId;
   char *relationName = get_rel_name(relationId);
   Oid schemaOid = get_rel_namespace(relationId);
   char *schemaName = get_namespace_name(schemaOid);
   char *qualifiedTableName = quote_qualified_identifier(schemaName,
                  relationName);

   ereport(ERROR, (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
       errmsg("the partition column of table %s cannot be NULL",
           qualifiedTableName)));
  }


  partitionColumnValue = columnValues[partitionColumnIndex];


  partitionColumnValue = CoerceColumnValue(partitionColumnValue, coercePath);
 }
 shardInterval = FindShardInterval(partitionColumnValue, copyDest->tableMetadata);
 if (shardInterval == ((void*)0))
 {
  ereport(ERROR, (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("could not find shard for partition column "
          "value")));
 }

 return shardInterval->shardId;
}
