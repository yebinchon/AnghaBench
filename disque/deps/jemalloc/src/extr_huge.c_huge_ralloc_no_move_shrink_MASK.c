#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  extent_node_t ;
struct TYPE_9__ {scalar_t__ (* split ) (void*,size_t,size_t,size_t,int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ chunk_hooks_t ;
struct TYPE_10__ {int /*<<< orphan*/  huge_mtx; int /*<<< orphan*/  ind; } ;
typedef  TYPE_2__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (uintptr_t) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,void*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ config_fill ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (void*,size_t) ; 
 int /*<<< orphan*/ * FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opt_junk_free ; 
 scalar_t__ FUNC15 (void*,size_t,size_t,size_t,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC17(void *ptr, size_t oldsize, size_t usize)
{
	extent_node_t *node;
	arena_t *arena;
	chunk_hooks_t chunk_hooks;
	size_t cdiff;
	bool pre_zeroed, post_zeroed;

	node = FUNC12(ptr);
	arena = FUNC7(node);
	pre_zeroed = FUNC9(node);
	chunk_hooks = FUNC5(arena);

	FUNC4(oldsize > usize);

	/* Split excess chunks. */
	cdiff = FUNC2(oldsize) - FUNC2(usize);
	if (cdiff != 0 && chunk_hooks.split(ptr, FUNC2(oldsize),
	    FUNC2(usize), cdiff, true, arena->ind))
		return (true);

	if (oldsize > usize) {
		size_t sdiff = oldsize - usize;
		if (config_fill && FUNC16(opt_junk_free)) {
			FUNC11((void *)((uintptr_t)ptr + usize),
			    sdiff);
			post_zeroed = false;
		} else {
			post_zeroed = !FUNC6(arena, &chunk_hooks,
			    FUNC0((uintptr_t)ptr + usize),
			    FUNC2(oldsize),
			    FUNC1((uintptr_t)ptr + usize), sdiff);
		}
	} else
		post_zeroed = pre_zeroed;

	FUNC13(&arena->huge_mtx);
	/* Update the size of the huge allocation. */
	FUNC8(node, usize);
	/* Update zeroed. */
	FUNC10(node, post_zeroed);
	FUNC14(&arena->huge_mtx);

	/* Zap the excess chunks. */
	FUNC3(arena, ptr, oldsize, usize);

	return (false);
}