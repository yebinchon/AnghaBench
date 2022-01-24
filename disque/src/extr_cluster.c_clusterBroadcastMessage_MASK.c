#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  dict ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  link; } ;
typedef  TYPE_1__ clusterNode ;

/* Variables and functions */
 int CLUSTER_NODE_HANDSHAKE ; 
 int CLUSTER_NODE_MYSELF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,size_t) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(dict *nodes, void *buf, size_t len) {
    dictIterator *di;
    dictEntry *de;

    di = FUNC2(nodes);
    while((de = FUNC3(di)) != NULL) {
        clusterNode *node = FUNC1(de);

        if (!node->link) continue;
        if (node->flags & (CLUSTER_NODE_MYSELF|CLUSTER_NODE_HANDSHAKE))
            continue;
        FUNC0(node->link,buf,len);
    }
    FUNC4(di);
}