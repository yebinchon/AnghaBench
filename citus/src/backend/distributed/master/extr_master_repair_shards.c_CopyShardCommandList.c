
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64 ;
typedef int int32 ;
struct TYPE_8__ {int relationId; int shardId; } ;
struct TYPE_7__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef TYPE_2__ ShardInterval ;
typedef int Oid ;
typedef int List ;


 char* ConstructQualifiedShardName (TYPE_2__*) ;
 int * GetTableIndexAndConstraintCommands (int ) ;
 int * NIL ;
 int * RecreateTableDDLCommandList (int ) ;
 int WORKER_APPEND_TABLE_TO_SHARD ;
 int * WorkerApplyShardDDLCommandList (int *,int ) ;
 int appendStringInfo (TYPE_1__*,int ,int ,int ,int ,int ) ;
 int * lappend (int *,int ) ;
 int * list_concat (int *,int *) ;
 TYPE_1__* makeStringInfo () ;
 int quote_literal_cstr (char*) ;

List *
CopyShardCommandList(ShardInterval *shardInterval, char *sourceNodeName,
      int32 sourceNodePort, bool includeDataCopy)
{
 int64 shardId = shardInterval->shardId;
 char *shardName = ConstructQualifiedShardName(shardInterval);
 List *tableRecreationCommandList = NIL;
 List *indexCommandList = NIL;
 List *copyShardToNodeCommandsList = NIL;
 StringInfo copyShardDataCommand = makeStringInfo();
 Oid relationId = shardInterval->relationId;

 tableRecreationCommandList = RecreateTableDDLCommandList(relationId);
 tableRecreationCommandList =
  WorkerApplyShardDDLCommandList(tableRecreationCommandList, shardId);

 copyShardToNodeCommandsList = list_concat(copyShardToNodeCommandsList,
             tableRecreationCommandList);





 if (includeDataCopy)
 {
  appendStringInfo(copyShardDataCommand, WORKER_APPEND_TABLE_TO_SHARD,
       quote_literal_cstr(shardName),
       quote_literal_cstr(shardName),
       quote_literal_cstr(sourceNodeName),
       sourceNodePort);

  copyShardToNodeCommandsList = lappend(copyShardToNodeCommandsList,
             copyShardDataCommand->data);
 }

 indexCommandList = GetTableIndexAndConstraintCommands(relationId);
 indexCommandList = WorkerApplyShardDDLCommandList(indexCommandList, shardId);

 copyShardToNodeCommandsList = list_concat(copyShardToNodeCommandsList,
             indexCommandList);

 return copyShardToNodeCommandsList;
}
