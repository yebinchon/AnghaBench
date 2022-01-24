#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* levels; int /*<<< orphan*/ * (* alloc ) (int) ;} ;
typedef  TYPE_2__ rtree_t ;
typedef  int /*<<< orphan*/  rtree_node_elm_t ;
struct TYPE_4__ {int bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_SPINWAIT ; 
 int /*<<< orphan*/ * RTREE_NODE_INITIALIZING ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 

__attribute__((used)) static rtree_node_elm_t *
FUNC5(rtree_t *rtree, unsigned level, rtree_node_elm_t **elmp)
{
	rtree_node_elm_t *node;

	if (FUNC1((void **)elmp, NULL, RTREE_NODE_INITIALIZING)) {
		/*
		 * Another thread is already in the process of initializing.
		 * Spin-wait until initialization is complete.
		 */
		do {
			CPU_SPINWAIT;
			node = FUNC2((void **)elmp);
		} while (node == RTREE_NODE_INITIALIZING);
	} else {
		node = rtree->alloc(FUNC0(1) << rtree->levels[level].bits);
		if (node == NULL)
			return (NULL);
		FUNC3((void **)elmp, node);
	}

	return (node);
}