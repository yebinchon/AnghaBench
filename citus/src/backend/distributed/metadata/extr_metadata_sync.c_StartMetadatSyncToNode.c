
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_6__ {int workerPort; int workerName; int isActive; } ;
typedef TYPE_1__ WorkerNode ;


 int CheckCitusVersion (int ) ;
 int DistNodeRelationId () ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int EnsureCoordinator () ;
 int EnsureModificationsCanRun () ;
 int EnsureSuperUser () ;
 int ExclusiveLock ;
 TYPE_1__* FindWorkerNode (char*,int ) ;
 int LockRelationOid (int ,int ) ;
 int MarkNodeHasMetadata (char*,int ,int) ;
 int MarkNodeMetadataSynced (int ,int ,int) ;
 int NOTICE ;
 scalar_t__ NodeIsCoordinator (TYPE_1__*) ;
 int NodeIsPrimary (TYPE_1__*) ;
 int PreventInTransactionBlock (int,char*) ;
 int SyncMetadataSnapshotToNode (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,char*,int ) ;
 int errmsg (char*,...) ;
 char* quote_literal_cstr (char*) ;

void
StartMetadatSyncToNode(char *nodeNameString, int32 nodePort)
{
 WorkerNode *workerNode = ((void*)0);
 char *escapedNodeName = quote_literal_cstr(nodeNameString);


 bool raiseInterrupts = 1;

 EnsureCoordinator();
 EnsureSuperUser();
 EnsureModificationsCanRun();
 CheckCitusVersion(ERROR);

 PreventInTransactionBlock(1, "start_metadata_sync_to_node");

 LockRelationOid(DistNodeRelationId(), ExclusiveLock);

 workerNode = FindWorkerNode(nodeNameString, nodePort);
 if (workerNode == ((void*)0))
 {
  ereport(ERROR, (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("you cannot sync metadata to a non-existent node"),
      errhint("First, add the node with SELECT master_add_node"
        "(%s,%d)", escapedNodeName, nodePort)));
 }

 if (!workerNode->isActive)
 {
  ereport(ERROR, (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("you cannot sync metadata to an inactive node"),
      errhint("First, activate the node with "
        "SELECT master_activate_node(%s,%d)",
        escapedNodeName, nodePort)));
 }

 if (NodeIsCoordinator(workerNode))
 {
  ereport(NOTICE, (errmsg("%s:%d is the coordinator and already contains "
        "metadata, skipping syncing the metadata",
        nodeNameString, nodePort)));
  return;
 }

 MarkNodeHasMetadata(nodeNameString, nodePort, 1);

 if (!NodeIsPrimary(workerNode))
 {




  return;
 }

 SyncMetadataSnapshotToNode(workerNode, raiseInterrupts);
 MarkNodeMetadataSynced(workerNode->workerName, workerNode->workerPort, 1);
}
