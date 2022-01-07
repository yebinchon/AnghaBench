
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int name; } ;
typedef TYPE_1__ clusterNode ;


 int CLUSTER_NODE_FAIL ;
 int CLUSTER_TODO_SAVE_CONFIG ;
 int CLUSTER_TODO_UPDATE_STATE ;
 int LL_VERBOSE ;
 int clusterDoBeforeSleep (int) ;
 int nodeFailed (TYPE_1__*) ;
 int serverAssert (int ) ;
 int serverLog (int ,char*,int ) ;

void clearNodeFailureIfNeeded(clusterNode *node) {
    serverAssert(nodeFailed(node));


    serverLog(LL_VERBOSE,
        "Clear FAIL state for node %.40s: it is reachable again.",
            node->name);
    node->flags &= ~CLUSTER_NODE_FAIL;
    clusterDoBeforeSleep(CLUSTER_TODO_UPDATE_STATE|CLUSTER_TODO_SAVE_CONFIG);
}
