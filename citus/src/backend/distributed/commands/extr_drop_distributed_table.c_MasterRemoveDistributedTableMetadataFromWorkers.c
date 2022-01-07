
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 char* DistributionDeleteCommand (char*,char*) ;
 int EnableDDLPropagation ;
 int EnsureCoordinator () ;
 int IsDistributedTable (int ) ;
 int SendCommandToWorkers (int ,char*) ;
 int ShouldSyncTableMetadata (int ) ;
 int WORKERS_WITH_METADATA ;

__attribute__((used)) static void
MasterRemoveDistributedTableMetadataFromWorkers(Oid relationId, char *schemaName,
            char *tableName)
{
 char *deleteDistributionCommand = ((void*)0);







 if (!IsDistributedTable(relationId) || !EnableDDLPropagation)
 {
  return;
 }

 EnsureCoordinator();

 if (!ShouldSyncTableMetadata(relationId))
 {
  return;
 }


 deleteDistributionCommand = DistributionDeleteCommand(schemaName, tableName);
 SendCommandToWorkers(WORKERS_WITH_METADATA, deleteDistributionCommand);
}
