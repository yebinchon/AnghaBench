#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  extent_node_t ;
struct TYPE_4__ {int /*<<< orphan*/  huge_mtx; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (TYPE_1__*,void*,size_t,size_t,int*) ; 
 scalar_t__ config_fill ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*,int,size_t) ; 
 int /*<<< orphan*/  opt_junk_alloc ; 
 int /*<<< orphan*/  opt_zero ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC10(void *ptr, size_t oldsize, size_t usize, bool zero) {
	extent_node_t *node;
	arena_t *arena;
	bool is_zeroed_subchunk, is_zeroed_chunk;

	node = FUNC5(ptr);
	arena = FUNC2(node);
	FUNC6(&arena->huge_mtx);
	is_zeroed_subchunk = FUNC4(node);
	FUNC7(&arena->huge_mtx);

	/*
	 * Copy zero into is_zeroed_chunk and pass the copy to chunk_alloc(), so
	 * that it is possible to make correct junk/zero fill decisions below.
	 */
	is_zeroed_chunk = zero;

	if (FUNC1(arena, ptr, oldsize, usize,
	     &is_zeroed_chunk))
		return (true);

	FUNC6(&arena->huge_mtx);
	/* Update the size of the huge allocation. */
	FUNC3(node, usize);
	FUNC7(&arena->huge_mtx);

	if (zero || (config_fill && FUNC9(opt_zero))) {
		if (!is_zeroed_subchunk) {
			FUNC8((void *)((uintptr_t)ptr + oldsize), 0,
			    FUNC0(oldsize) - oldsize);
		}
		if (!is_zeroed_chunk) {
			FUNC8((void *)((uintptr_t)ptr +
			    FUNC0(oldsize)), 0, usize -
			    FUNC0(oldsize));
		}
	} else if (config_fill && FUNC9(opt_junk_alloc)) {
		FUNC8((void *)((uintptr_t)ptr + oldsize), 0xa5, usize -
		    oldsize);
	}

	return (false);
}