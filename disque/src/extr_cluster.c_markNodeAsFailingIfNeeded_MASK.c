#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  name; int /*<<< orphan*/  fail_time; int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ clusterNode ;
struct TYPE_10__ {TYPE_1__* cluster; } ;
struct TYPE_8__ {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTER_NODE_FAIL ; 
 int /*<<< orphan*/  CLUSTER_NODE_PFAIL ; 
 int CLUSTER_TODO_SAVE_CONFIG ; 
 int CLUSTER_TODO_UPDATE_STATE ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC7(clusterNode *node) {
    int failures;
    int needed_quorum = (server.cluster->size / 2) + 1;

    if (!FUNC5(node)) return; /* We can reach it. */
    if (FUNC4(node)) return; /* Already FAILing. */

    failures = FUNC1(node);
    /* Also count myself as a voter if I'm a master. */
    failures++;
    if (failures < needed_quorum) return; /* No weak agreement from masters. */

    FUNC6(LL_VERBOSE,
        "Marking node %.40s as failing (quorum reached).", node->name);

    /* Mark the node as failing. */
    node->flags &= ~CLUSTER_NODE_PFAIL;
    node->flags |= CLUSTER_NODE_FAIL;
    node->fail_time = FUNC3();

    /* Broadcast the failing node name to everybody, forcing all the other
     * reachable nodes to flag the node as FAIL. */
    FUNC2(node->name);
    FUNC0(CLUSTER_TODO_UPDATE_STATE|CLUSTER_TODO_SAVE_CONFIG);
}