#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  extent_node_t ;
typedef  int /*<<< orphan*/  chunk_hooks_t ;
struct TYPE_5__ {int /*<<< orphan*/  huge_mtx; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  CHUNK_HOOKS_INITIALIZER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,size_t,size_t) ; 
 scalar_t__ config_fill ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (void*,int,size_t) ; 
 int /*<<< orphan*/  opt_junk_alloc ; 
 int /*<<< orphan*/  opt_junk_free ; 
 int /*<<< orphan*/  opt_zero ; 
 size_t FUNC13 (size_t) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(void *ptr, size_t oldsize, size_t usize_min,
    size_t usize_max, bool zero)
{
	size_t usize, usize_next;
	extent_node_t *node;
	arena_t *arena;
	chunk_hooks_t chunk_hooks = CHUNK_HOOKS_INITIALIZER;
	bool pre_zeroed, post_zeroed;

	/* Increase usize to incorporate extra. */
	for (usize = usize_min; usize < usize_max && (usize_next = FUNC13(usize+1))
	    <= oldsize; usize = usize_next)
		; /* Do nothing. */

	if (oldsize == usize)
		return;

	node = FUNC9(ptr);
	arena = FUNC4(node);
	pre_zeroed = FUNC7(node);

	/* Fill if necessary (shrinking). */
	if (oldsize > usize) {
		size_t sdiff = oldsize - usize;
		if (config_fill && FUNC14(opt_junk_free)) {
			FUNC12((void *)((uintptr_t)ptr + usize), 0x5a, sdiff);
			post_zeroed = false;
		} else {
			post_zeroed = !FUNC3(arena, &chunk_hooks,
			    ptr, FUNC0(oldsize), usize, sdiff);
		}
	} else
		post_zeroed = pre_zeroed;

	FUNC10(&arena->huge_mtx);
	/* Update the size of the huge allocation. */
	FUNC2(FUNC5(node) != usize);
	FUNC6(node, usize);
	/* Update zeroed. */
	FUNC8(node, post_zeroed);
	FUNC11(&arena->huge_mtx);

	FUNC1(arena, ptr, oldsize, usize);

	/* Fill if necessary (growing). */
	if (oldsize < usize) {
		if (zero || (config_fill && FUNC14(opt_zero))) {
			if (!pre_zeroed) {
				FUNC12((void *)((uintptr_t)ptr + oldsize), 0,
				    usize - oldsize);
			}
		} else if (config_fill && FUNC14(opt_junk_alloc)) {
			FUNC12((void *)((uintptr_t)ptr + oldsize), 0xa5, usize -
			    oldsize);
		}
	}
}