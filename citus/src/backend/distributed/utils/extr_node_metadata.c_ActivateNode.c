
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nodeId; } ;
typedef TYPE_1__ WorkerNode ;


 int DistNodeRelationId () ;
 int ExclusiveLock ;
 int LockRelationOid (int ,int ) ;
 int PropagateRolesToNewNode (TYPE_1__*) ;
 TYPE_1__* SetNodeState (char*,int,int) ;
 int SetUpDistributedTableDependencies (TYPE_1__*) ;

__attribute__((used)) static int
ActivateNode(char *nodeName, int nodePort)
{
 WorkerNode *newWorkerNode = ((void*)0);
 bool isActive = 1;


 LockRelationOid(DistNodeRelationId(), ExclusiveLock);

 newWorkerNode = SetNodeState(nodeName, nodePort, isActive);

 PropagateRolesToNewNode(newWorkerNode);
 SetUpDistributedTableDependencies(newWorkerNode);
 return newWorkerNode->nodeId;
}
