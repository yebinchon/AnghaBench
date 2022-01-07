
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int WorkerNode ;


 int CheckCitusVersion (int ) ;
 int DistNodeRelationId () ;
 int ERROR ;
 int EnsureCoordinator () ;
 int ExclusiveLock ;
 int * FindWorkerNodeAnyCluster (char const*,int ) ;
 int LockRelationOid (int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*,int ) ;

__attribute__((used)) static WorkerNode *
ModifiableWorkerNode(const char *nodeName, int32 nodePort)
{
 WorkerNode *workerNode = ((void*)0);

 CheckCitusVersion(ERROR);

 EnsureCoordinator();


 LockRelationOid(DistNodeRelationId(), ExclusiveLock);

 workerNode = FindWorkerNodeAnyCluster(nodeName, nodePort);
 if (workerNode == ((void*)0))
 {
  ereport(ERROR, (errmsg("node at \"%s:%u\" does not exist", nodeName, nodePort)));
 }

 return workerNode;
}
