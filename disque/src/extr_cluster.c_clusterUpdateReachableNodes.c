
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_9__ {TYPE_1__* cluster; } ;
struct TYPE_7__ {scalar_t__ reachable_nodes_count; TYPE_2__** reachable_nodes; int nodes; } ;


 int CLUSTER_NODE_FAIL ;
 int CLUSTER_NODE_HANDSHAKE ;
 int CLUSTER_NODE_LEAVING ;
 int CLUSTER_NODE_MYSELF ;
 int CLUSTER_NODE_PFAIL ;
 int * dictGetSafeIterator (int ) ;
 TYPE_2__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int dictSize (int ) ;
 TYPE_5__ server ;
 TYPE_2__** zrealloc (TYPE_2__**,int) ;

void clusterUpdateReachableNodes(void) {
    dictIterator *di;
    dictEntry *de;
    int maxsize = dictSize(server.cluster->nodes) * sizeof(clusterNode*);

    server.cluster->reachable_nodes =
        zrealloc(server.cluster->reachable_nodes,maxsize);
    server.cluster->reachable_nodes_count = 0;

    di = dictGetSafeIterator(server.cluster->nodes);
    while((de = dictNext(di)) != ((void*)0)) {
        clusterNode *node = dictGetVal(de);

        if (node->flags & (CLUSTER_NODE_MYSELF|
                           CLUSTER_NODE_HANDSHAKE|
                           CLUSTER_NODE_LEAVING|
                           CLUSTER_NODE_PFAIL|
                           CLUSTER_NODE_FAIL)) continue;
        server.cluster->reachable_nodes[server.cluster->reachable_nodes_count++]
            = node;
    }
    dictReleaseIterator(di);
}
