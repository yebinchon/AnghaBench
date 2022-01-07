
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int workerPort; int workerName; } ;
typedef TYPE_1__ WorkerNode ;


 scalar_t__ ClusterHasDistributedFunctionWithDistArgument () ;
 int EnsureNoModificationsHaveBeenDone () ;
 int MarkNodeHasMetadata (int ,int ,int) ;
 int MyDatabaseId ;
 scalar_t__ NodeIsPrimary (TYPE_1__*) ;
 int ReplicateAllDependenciesToNode (int ,int ) ;
 int ReplicateAllReferenceTablesToNode (int ,int ) ;
 int TriggerMetadataSync (int ) ;

__attribute__((used)) static void
SetUpDistributedTableDependencies(WorkerNode *newWorkerNode)
{
 if (NodeIsPrimary(newWorkerNode))
 {
  EnsureNoModificationsHaveBeenDone();
  ReplicateAllDependenciesToNode(newWorkerNode->workerName,
            newWorkerNode->workerPort);
  ReplicateAllReferenceTablesToNode(newWorkerNode->workerName,
            newWorkerNode->workerPort);






  if (ClusterHasDistributedFunctionWithDistArgument())
  {
   MarkNodeHasMetadata(newWorkerNode->workerName, newWorkerNode->workerPort,
        1);
   TriggerMetadataSync(MyDatabaseId);
  }
 }
}
