#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  extent_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * base_nodes ; 

__attribute__((used)) static extent_node_t *
FUNC1(void)
{
	extent_node_t *node;

	if (base_nodes == NULL)
		return (NULL);
	node = base_nodes;
	base_nodes = *(extent_node_t **)node;
	FUNC0(node, sizeof(extent_node_t));
	return (node);
}