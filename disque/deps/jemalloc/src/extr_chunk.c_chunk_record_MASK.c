#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  extent_tree_t ;
typedef  int /*<<< orphan*/  extent_node_t ;
struct TYPE_14__ {int /*<<< orphan*/  (* merge ) (void*,uintptr_t,void*,size_t,int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ chunk_hooks_t ;
struct TYPE_15__ {int /*<<< orphan*/  chunks_mtx; int /*<<< orphan*/  ind; } ;
typedef  TYPE_2__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*,void*,size_t,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,void*,size_t,int,int) ; 
 uintptr_t FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,uintptr_t) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (void*,size_t,void*,uintptr_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (void*,uintptr_t,void*,size_t,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC26(arena_t *arena, chunk_hooks_t *chunk_hooks,
    extent_tree_t *chunks_szad, extent_tree_t *chunks_ad, bool cache,
    void *chunk, size_t size, bool zeroed, bool committed)
{
	bool unzeroed;
	extent_node_t *node, *prev;
	extent_node_t key;

	FUNC5(!cache || !zeroed);
	unzeroed = cache || !zeroed;
	FUNC0(chunk, size);

	FUNC22(&arena->chunks_mtx);
	FUNC6(arena, chunk_hooks);
	FUNC11(&key, arena, (void *)((uintptr_t)chunk + size), 0,
	    false, false);
	node = FUNC17(chunks_ad, &key);
	/* Try to coalesce forward. */
	if (node != NULL && FUNC8(node) ==
	    FUNC8(&key) && FUNC10(node) ==
	    committed && !chunk_hooks->merge(chunk, size,
	    FUNC8(node), FUNC12(node), false,
	    arena->ind)) {
		/*
		 * Coalesce chunk with the following address range.  This does
		 * not change the position within chunks_ad, so only
		 * remove/insert from/into chunks_szad.
		 */
		FUNC21(chunks_szad, node);
		FUNC2(arena, node, cache);
		FUNC9(node, chunk);
		FUNC13(node, size + FUNC12(node));
		FUNC15(node, FUNC14(node) &&
		    !unzeroed);
		FUNC20(chunks_szad, node);
		FUNC1(arena, node, cache);
	} else {
		/* Coalescing forward failed, so insert a new node. */
		node = FUNC3(arena);
		if (node == NULL) {
			/*
			 * Node allocation failed, which is an exceedingly
			 * unlikely failure.  Leak chunk after making sure its
			 * pages have already been purged, so that this is only
			 * a virtual memory leak.
			 */
			if (cache) {
				FUNC7(arena, chunk_hooks, chunk,
				    size, 0, size);
			}
			goto label_return;
		}
		FUNC11(node, arena, chunk, size, !unzeroed,
		    committed);
		FUNC16(chunks_ad, node);
		FUNC20(chunks_szad, node);
		FUNC1(arena, node, cache);
	}

	/* Try to coalesce backward. */
	prev = FUNC18(chunks_ad, node);
	if (prev != NULL && (void *)((uintptr_t)FUNC8(prev) +
	    FUNC12(prev)) == chunk &&
	    FUNC10(prev) == committed &&
	    !chunk_hooks->merge(FUNC8(prev),
	    FUNC12(prev), chunk, size, false, arena->ind)) {
		/*
		 * Coalesce chunk with the previous address range.  This does
		 * not change the position within chunks_ad, so only
		 * remove/insert node from/into chunks_szad.
		 */
		FUNC21(chunks_szad, prev);
		FUNC19(chunks_ad, prev);
		FUNC2(arena, prev, cache);
		FUNC21(chunks_szad, node);
		FUNC2(arena, node, cache);
		FUNC9(node, FUNC8(prev));
		FUNC13(node, FUNC12(prev) +
		    FUNC12(node));
		FUNC15(node, FUNC14(prev) &&
		    FUNC14(node));
		FUNC20(chunks_szad, node);
		FUNC1(arena, node, cache);

		FUNC4(arena, prev);
	}

label_return:
	FUNC23(&arena->chunks_mtx);
}