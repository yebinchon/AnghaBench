#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  tcache_t ;
typedef  int /*<<< orphan*/  extent_node_t ;
struct TYPE_9__ {int /*<<< orphan*/  huge_mtx; int /*<<< orphan*/  huge; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  CACHELINE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC2 (TYPE_1__*,size_t,size_t,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t chunksize ; 
 scalar_t__ config_fill ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,void*,size_t,int,int) ; 
 scalar_t__ FUNC6 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void*,int,size_t) ; 
 int opt_junk_alloc ; 
 int opt_zero ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_link ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC14 (size_t,size_t) ; 
 scalar_t__ FUNC15 (int) ; 

void *
FUNC16(tsd_t *tsd, arena_t *arena, size_t size, size_t alignment,
    bool zero, tcache_t *tcache)
{
	void *ret;
	size_t usize;
	extent_node_t *node;
	bool is_zeroed;

	/* Allocate one or more contiguous chunks for this request. */

	usize = FUNC14(size, alignment);
	if (FUNC15(usize == 0))
		return (NULL);
	FUNC4(usize >= chunksize);

	/* Allocate an extent node with which to track the chunk. */
	node = FUNC8(tsd, FUNC0(sizeof(extent_node_t)),
	    CACHELINE, false, tcache, true, arena);
	if (node == NULL)
		return (NULL);

	/*
	 * Copy zero into is_zeroed and pass the copy to chunk_alloc(), so that
	 * it is possible to make correct junk/zero fill decisions below.
	 */
	is_zeroed = zero;
	arena = FUNC1(tsd, arena);
	if (FUNC15(arena == NULL) || (ret = FUNC2(arena,
	    size, alignment, &is_zeroed)) == NULL) {
		FUNC7(tsd, node, tcache, true);
		return (NULL);
	}

	FUNC5(node, arena, ret, size, is_zeroed, true);

	if (FUNC6(ret, node)) {
		FUNC3(arena, ret, size);
		FUNC7(tsd, node, tcache, true);
		return (NULL);
	}

	/* Insert node into huge. */
	FUNC9(&arena->huge_mtx);
	FUNC12(node, ql_link);
	FUNC13(&arena->huge, node, ql_link);
	FUNC10(&arena->huge_mtx);

	if (zero || (config_fill && FUNC15(opt_zero))) {
		if (!is_zeroed)
			FUNC11(ret, 0, size);
	} else if (config_fill && FUNC15(opt_junk_alloc))
		FUNC11(ret, 0xa5, size);

	return (ret);
}