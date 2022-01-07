
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_t ;


 int Log_Print (char*,...) ;
 int Tree_PruneNodes_r (int *) ;
 scalar_t__ c_pruned ;

void Tree_PruneNodes(node_t *node)
{
 Log_Print("------- Prune Nodes --------\n");
 c_pruned = 0;
 Tree_PruneNodes_r(node);
 Log_Print("%5i pruned nodes\n", c_pruned);
}
