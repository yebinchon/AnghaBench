
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int clusterNode ;
struct TYPE_4__ {TYPE_1__* cluster; } ;
struct TYPE_3__ {int reachable_nodes_count; int ** reachable_nodes; } ;


 int rand () ;
 TYPE_2__ server ;

void clusterShuffleReachableNodes(void) {
    int r, i;
    clusterNode *tmp;
    for(i = server.cluster->reachable_nodes_count - 1; i > 0; i--) {
        r = rand() % (i + 1);
        tmp = server.cluster->reachable_nodes[r];
        server.cluster->reachable_nodes[r] = server.cluster->reachable_nodes[i];
        server.cluster->reachable_nodes[i] = tmp;
    }
}
