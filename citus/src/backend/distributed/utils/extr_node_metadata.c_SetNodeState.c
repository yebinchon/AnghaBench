
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WorkerNode ;


 int Anum_pg_dist_node_isactive ;
 int BoolGetDatum (int) ;
 int * FindWorkerNodeAnyCluster (char*,int) ;
 int * SetWorkerColumn (int *,int ,int ) ;

__attribute__((used)) static WorkerNode *
SetNodeState(char *nodeName, int nodePort, bool isActive)
{
 WorkerNode *workerNode = FindWorkerNodeAnyCluster(nodeName, nodePort);
 return SetWorkerColumn(workerNode, Anum_pg_dist_node_isactive,
         BoolGetDatum(isActive));
}
