
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WorkerNode ;


 int Anum_pg_dist_node_shouldhaveshards ;
 int BoolGetDatum (int) ;
 int * SetWorkerColumn (int *,int ,int ) ;

__attribute__((used)) static WorkerNode *
SetShouldHaveShards(WorkerNode *workerNode, bool shouldHaveShards)
{
 return SetWorkerColumn(workerNode, Anum_pg_dist_node_shouldhaveshards,
         BoolGetDatum(shouldHaveShards));
}
