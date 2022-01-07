
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int workerPort; int workerName; } ;
typedef TYPE_1__ WorkerNode ;
typedef int List ;


 int CitusExtensionOwnerName () ;
 int EnableAlterRolePropagation ;
 int * GenerateAlterRoleIfExistsCommandAllRoles () ;
 int * NIL ;
 int SendCommandListToWorkerInSingleTransaction (int ,int ,int ,int *) ;

__attribute__((used)) static void
PropagateRolesToNewNode(WorkerNode *newWorkerNode)
{
 List *ddlCommands = NIL;

 if (!EnableAlterRolePropagation)
 {
  return;
 }

 ddlCommands = GenerateAlterRoleIfExistsCommandAllRoles();

 SendCommandListToWorkerInSingleTransaction(newWorkerNode->workerName,
              newWorkerNode->workerPort,
              CitusExtensionOwnerName(), ddlCommands);
}
