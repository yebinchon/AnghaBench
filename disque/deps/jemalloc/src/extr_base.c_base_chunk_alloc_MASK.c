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
 size_t FUNC0 (int) ; 
 size_t FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t base_allocated ; 
 size_t base_mapped ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  base_resident ; 
 void* FUNC6 (size_t) ; 
 scalar_t__ config_stats ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t,int,int) ; 

__attribute__((used)) static extent_node_t *
FUNC8(size_t minsize)
{
	extent_node_t *node;
	size_t csize, nsize;
	void *addr;

	FUNC3(minsize != 0);
	node = FUNC5();
	/* Allocate enough space to also carve a node out if necessary. */
	nsize = (node == NULL) ? FUNC0(sizeof(extent_node_t)) : 0;
	csize = FUNC1(minsize + nsize);
	addr = FUNC6(csize);
	if (addr == NULL) {
		if (node != NULL)
			FUNC4(node);
		return (NULL);
	}
	base_mapped += csize;
	if (node == NULL) {
		node = (extent_node_t *)addr;
		addr = (void *)((uintptr_t)addr + nsize);
		csize -= nsize;
		if (config_stats) {
			base_allocated += nsize;
			base_resident += FUNC2(nsize);
		}
	}
	FUNC7(node, NULL, addr, csize, true, true);
	return (node);
}