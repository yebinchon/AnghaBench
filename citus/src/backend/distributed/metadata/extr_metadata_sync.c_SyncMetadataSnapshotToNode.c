
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int workerPort; int workerName; int groupId; } ;
typedef TYPE_1__ WorkerNode ;
typedef int List ;


 char* CitusExtensionOwnerName () ;
 char* LocalGroupIdUpdateCommand (int ) ;
 int * MetadataCreateCommands () ;
 int * MetadataDropCommands () ;
 int SendCommandListToWorkerInSingleTransaction (int ,int ,char*,int *) ;
 int SendOptionalCommandListToWorkerInTransaction (int ,int ,char*,int *) ;
 int * list_concat (int *,int *) ;
 int * list_make1 (char*) ;

__attribute__((used)) static bool
SyncMetadataSnapshotToNode(WorkerNode *workerNode, bool raiseOnError)
{
 char *extensionOwner = CitusExtensionOwnerName();


 char *localGroupIdUpdateCommand = LocalGroupIdUpdateCommand(workerNode->groupId);


 List *dropMetadataCommandList = MetadataDropCommands();


 List *createMetadataCommandList = MetadataCreateCommands();

 List *recreateMetadataSnapshotCommandList = list_make1(localGroupIdUpdateCommand);
 recreateMetadataSnapshotCommandList = list_concat(recreateMetadataSnapshotCommandList,
               dropMetadataCommandList);
 recreateMetadataSnapshotCommandList = list_concat(recreateMetadataSnapshotCommandList,
               createMetadataCommandList);







 if (raiseOnError)
 {
  SendCommandListToWorkerInSingleTransaction(workerNode->workerName,
               workerNode->workerPort,
               extensionOwner,
               recreateMetadataSnapshotCommandList);
  return 1;
 }
 else
 {
  bool success =
   SendOptionalCommandListToWorkerInTransaction(workerNode->workerName,
               workerNode->workerPort,
               extensionOwner,
               recreateMetadataSnapshotCommandList);
  return success;
 }
}
