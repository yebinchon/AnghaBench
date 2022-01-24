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
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 
 scalar_t__ FUNC2 (uintptr_t) ; 
 size_t base_allocated ; 
 int /*<<< orphan*/  base_avail_szad ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 int /*<<< orphan*/  base_mtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  base_resident ; 
 scalar_t__ config_stats ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int,int) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 size_t FUNC15 (size_t) ; 

void *
FUNC16(size_t size)
{
	void *ret;
	size_t csize, usize;
	extent_node_t *node;
	extent_node_t key;

	/*
	 * Round size up to nearest multiple of the cacheline size, so that
	 * there is no chance of false cache line sharing.
	 */
	csize = FUNC0(size);

	usize = FUNC15(csize);
	FUNC7(&key, NULL, NULL, usize, false, false);
	FUNC13(&base_mtx);
	node = FUNC11(&base_avail_szad, &key);
	if (node != NULL) {
		/* Use existing space. */
		FUNC12(&base_avail_szad, node);
	} else {
		/* Try to allocate more space. */
		node = FUNC3(csize);
	}
	if (node == NULL) {
		ret = NULL;
		goto label_return;
	}

	ret = FUNC5(node);
	if (FUNC8(node) > csize) {
		FUNC6(node, (void *)((uintptr_t)ret + csize));
		FUNC9(node, FUNC8(node) - csize);
		FUNC10(&base_avail_szad, node);
	} else
		FUNC4(node);
	if (config_stats) {
		base_allocated += csize;
		/*
		 * Add one PAGE to base_resident for every page boundary that is
		 * crossed by the new allocation.
		 */
		base_resident += FUNC2((uintptr_t)ret + csize) -
		    FUNC2((uintptr_t)ret);
	}
	FUNC1(ret, csize);
label_return:
	FUNC14(&base_mtx);
	return (ret);
}