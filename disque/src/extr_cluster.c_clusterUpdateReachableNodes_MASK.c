#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_8__ {int flags; } ;
typedef  TYPE_2__ clusterNode ;
struct TYPE_9__ {TYPE_1__* cluster; } ;
struct TYPE_7__ {scalar_t__ reachable_nodes_count; TYPE_2__** reachable_nodes; int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 int CLUSTER_NODE_FAIL ; 
 int CLUSTER_NODE_HANDSHAKE ; 
 int CLUSTER_NODE_LEAVING ; 
 int CLUSTER_NODE_MYSELF ; 
 int CLUSTER_NODE_PFAIL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__ server ; 
 TYPE_2__** FUNC5 (TYPE_2__**,int) ; 

void FUNC6(void) {
    dictIterator *di;
    dictEntry *de;
    int maxsize = FUNC4(server.cluster->nodes) * sizeof(clusterNode*);

    server.cluster->reachable_nodes =
        FUNC5(server.cluster->reachable_nodes,maxsize);
    server.cluster->reachable_nodes_count = 0;

    di = FUNC0(server.cluster->nodes);
    while((de = FUNC2(di)) != NULL) {
        clusterNode *node = FUNC1(de);

        if (node->flags & (CLUSTER_NODE_MYSELF|
                           CLUSTER_NODE_HANDSHAKE|
                           CLUSTER_NODE_LEAVING|
                           CLUSTER_NODE_PFAIL|
                           CLUSTER_NODE_FAIL)) continue;
        server.cluster->reachable_nodes[server.cluster->reachable_nodes_count++]
            = node;
    }
    FUNC3(di);
}