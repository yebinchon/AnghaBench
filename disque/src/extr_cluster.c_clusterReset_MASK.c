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
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ clusterNode ;
struct TYPE_10__ {TYPE_1__* cluster; } ;
struct TYPE_8__ {int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTER_NAMELEN ; 
 int CLUSTER_TODO_FSYNC_CONFIG ; 
 int CLUSTER_TODO_SAVE_CONFIG ; 
 int CLUSTER_TODO_UPDATE_STATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* myself ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ server ; 

void FUNC13(int hard) {
    dictIterator *di;
    dictEntry *de;

    /* Forget all the nodes, but myself. */
    di = FUNC5(server.cluster->nodes);
    while((de = FUNC7(di)) != NULL) {
        clusterNode *node = FUNC6(de);

        if (node == myself) continue;
        FUNC1(node);
    }
    FUNC8(di);

    /* Information about reachable nodes is no longer valid. Update it. */
    FUNC3();

    /* Hard reset only: change node ID. */
    if (hard) {
        sds oldname;

        /* To change the Node ID we need to remove the old name from the
         * nodes table, change the ID, and re-add back with new name. */
        oldname = FUNC12(myself->name, CLUSTER_NAMELEN);
        FUNC4(server.cluster->nodes,oldname);
        FUNC11(oldname);
        FUNC10(myself->name, CLUSTER_NAMELEN);
        FUNC0(myself);
    }

    FUNC9();

    /* TODO: flush the deleted nodes hash table and the deleted nodes
     * entries. There are no longer jobs or queues that may reference
     * them. */

    /* Make sure to persist the new config and update the state. */
    FUNC2(CLUSTER_TODO_SAVE_CONFIG|
                         CLUSTER_TODO_UPDATE_STATE|
                         CLUSTER_TODO_FSYNC_CONFIG);
}