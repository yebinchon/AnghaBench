
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ targetRelationId; scalar_t__ commandString; int taskList; int concurrentIndexCmd; } ;
typedef int List ;
typedef TYPE_1__ DDLJob ;


 int Assert (int) ;
 scalar_t__ COMMIT_PROTOCOL_BARE ;
 char* DISABLE_DDL_PROPAGATION ;
 int ERROR ;
 int EnsureCoordinator () ;
 int EnsurePartitionTableNotReplicated (scalar_t__) ;
 int ExecuteUtilityTaskListWithoutResults (int ) ;
 scalar_t__ InvalidOid ;
 scalar_t__ MultiShardCommitProtocol ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 scalar_t__ SavedMultiShardCommitProtocol ;
 int SendBareCommandListToWorkers (int ,int *) ;
 int SendCommandToWorkers (int ,char*) ;
 char* SetSearchPathToCurrentSearchPathCommand () ;
 int ShouldSyncTableMetadata (scalar_t__) ;
 int WORKERS_WITH_METADATA ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int * lappend (int *,char*) ;
 int * list_make1 (char*) ;

__attribute__((used)) static void
ExecuteDistributedDDLJob(DDLJob *ddlJob)
{
 bool shouldSyncMetadata = 0;

 EnsureCoordinator();

 if (ddlJob->targetRelationId != InvalidOid)
 {




  shouldSyncMetadata = ShouldSyncTableMetadata(ddlJob->targetRelationId);
  EnsurePartitionTableNotReplicated(ddlJob->targetRelationId);
 }


 if (!ddlJob->concurrentIndexCmd)
 {
  if (shouldSyncMetadata)
  {
   char *setSearchPathCommand = SetSearchPathToCurrentSearchPathCommand();

   SendCommandToWorkers(WORKERS_WITH_METADATA, DISABLE_DDL_PROPAGATION);





   if (setSearchPathCommand != ((void*)0))
   {
    SendCommandToWorkers(WORKERS_WITH_METADATA, setSearchPathCommand);
   }

   SendCommandToWorkers(WORKERS_WITH_METADATA, (char *) ddlJob->commandString);
  }


  ExecuteUtilityTaskListWithoutResults(ddlJob->taskList);
 }
 else
 {

  Assert(SavedMultiShardCommitProtocol == COMMIT_PROTOCOL_BARE);
  SavedMultiShardCommitProtocol = MultiShardCommitProtocol;
  MultiShardCommitProtocol = COMMIT_PROTOCOL_BARE;

  PG_TRY();
  {

   ExecuteUtilityTaskListWithoutResults(ddlJob->taskList);

   if (shouldSyncMetadata)
   {
    List *commandList = list_make1(DISABLE_DDL_PROPAGATION);
    char *setSearchPathCommand = SetSearchPathToCurrentSearchPathCommand();





    if (setSearchPathCommand != ((void*)0))
    {
     commandList = lappend(commandList, setSearchPathCommand);
    }

    commandList = lappend(commandList, (char *) ddlJob->commandString);

    SendBareCommandListToWorkers(WORKERS_WITH_METADATA, commandList);
   }
  }
  PG_CATCH();
  {
   ereport(ERROR,
     (errmsg("CONCURRENTLY-enabled index command failed"),
      errdetail("CONCURRENTLY-enabled index commands can fail partially, "
          "leaving behind an INVALID index."),
      errhint("Use DROP INDEX CONCURRENTLY IF EXISTS to remove the "
        "invalid index, then retry the original command.")));
  }
  PG_END_TRY();
 }
}
