
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;
typedef int DistTableCacheEntry ;


 int * DistributedTableCacheEntry (int ) ;
 char* DistributionCreateCommand (int *) ;
 char* GenerateAlterTableAttachPartitionCommand (int ) ;
 int * GetTableDDLEvents (int ,int) ;
 int * GetTableForeignConstraintCommands (int ) ;
 int * LoadShardIntervalList (int ) ;
 int * NIL ;
 scalar_t__ PartitionTable (int ) ;
 int * SequenceDDLCommandsForTable (int ) ;
 int * ShardListInsertCommand (int *) ;
 char* TableOwnerResetCommand (int ) ;
 char* TruncateTriggerCreateCommand (int ) ;
 int * lappend (int *,char*) ;
 int * list_concat (int *,int *) ;

List *
GetDistributedTableDDLEvents(Oid relationId)
{
 DistTableCacheEntry *cacheEntry = DistributedTableCacheEntry(relationId);

 List *shardIntervalList = NIL;
 List *commandList = NIL;
 List *foreignConstraintCommands = NIL;
 List *shardMetadataInsertCommandList = NIL;
 List *sequenceDDLCommands = NIL;
 List *tableDDLCommands = NIL;
 char *tableOwnerResetCommand = ((void*)0);
 char *metadataCommand = ((void*)0);
 char *truncateTriggerCreateCommand = ((void*)0);
 bool includeSequenceDefaults = 1;


 sequenceDDLCommands = SequenceDDLCommandsForTable(relationId);
 commandList = list_concat(commandList, sequenceDDLCommands);


 tableDDLCommands = GetTableDDLEvents(relationId, includeSequenceDefaults);
 commandList = list_concat(commandList, tableDDLCommands);


 tableOwnerResetCommand = TableOwnerResetCommand(relationId);
 commandList = lappend(commandList, tableOwnerResetCommand);


 metadataCommand = DistributionCreateCommand(cacheEntry);
 commandList = lappend(commandList, metadataCommand);


 truncateTriggerCreateCommand = TruncateTriggerCreateCommand(relationId);
 commandList = lappend(commandList, truncateTriggerCreateCommand);


 shardIntervalList = LoadShardIntervalList(relationId);
 shardMetadataInsertCommandList = ShardListInsertCommand(shardIntervalList);
 commandList = list_concat(commandList, shardMetadataInsertCommandList);


 foreignConstraintCommands = GetTableForeignConstraintCommands(relationId);
 commandList = list_concat(commandList, foreignConstraintCommands);


 if (PartitionTable(relationId))
 {
  char *alterTableAttachPartitionCommands =
   GenerateAlterTableAttachPartitionCommand(relationId);
  commandList = lappend(commandList, alterTableAttachPartitionCommands);
 }

 return commandList;
}
