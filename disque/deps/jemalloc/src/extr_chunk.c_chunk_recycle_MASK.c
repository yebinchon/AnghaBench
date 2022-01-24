#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ret ;
typedef  int /*<<< orphan*/  extent_tree_t ;
typedef  int /*<<< orphan*/  extent_node_t ;
struct TYPE_15__ {scalar_t__ (* commit ) (void*,size_t,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ;scalar_t__ (* split ) (void*,size_t,size_t,size_t,int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ chunk_hooks_t ;
struct TYPE_16__ {int /*<<< orphan*/  chunks_mtx; int /*<<< orphan*/  ind; } ;
typedef  TYPE_2__ arena_t ;

/* Variables and functions */
 uintptr_t FUNC0 (uintptr_t,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,void*,size_t,int,int) ; 
 size_t chunksize ; 
 scalar_t__ config_debug ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*,void*,size_t,int,int) ; 
 size_t FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC25 (size_t) ; 
 scalar_t__ FUNC26 (void*,size_t,size_t,size_t,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (void*,size_t,size_t,size_t,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (void*,size_t,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC29(arena_t *arena, chunk_hooks_t *chunk_hooks,
    extent_tree_t *chunks_szad, extent_tree_t *chunks_ad, bool cache,
    void *new_addr, size_t size, size_t alignment, bool *zero, bool *commit,
    bool dalloc_node)
{
	void *ret;
	extent_node_t *node;
	size_t alloc_size, leadsize, trailsize;
	bool zeroed, committed;

	FUNC7(new_addr == NULL || alignment == chunksize);
	/*
	 * Cached chunks use the node linkage embedded in their headers, in
	 * which case dalloc_node is true, and new_addr is non-NULL because
	 * we're operating on a specific chunk.
	 */
	FUNC7(dalloc_node || new_addr != NULL);

	alloc_size = FUNC1(FUNC25(size + alignment - chunksize));
	/* Beware size_t wrap-around. */
	if (alloc_size < size)
		return (NULL);
	FUNC22(&arena->chunks_mtx);
	FUNC9(arena, chunk_hooks);
	if (new_addr != NULL) {
		extent_node_t key;
		FUNC13(&key, arena, new_addr, alloc_size, false,
		    false);
		node = FUNC19(chunks_ad, &key);
	} else {
		node = FUNC8(arena, chunks_szad, chunks_ad,
		    alloc_size);
	}
	if (node == NULL || (new_addr != NULL && FUNC14(node) <
	    size)) {
		FUNC23(&arena->chunks_mtx);
		return (NULL);
	}
	leadsize = FUNC0((uintptr_t)FUNC11(node),
	    alignment) - (uintptr_t)FUNC11(node);
	FUNC7(new_addr == NULL || leadsize == 0);
	FUNC7(FUNC14(node) >= leadsize + size);
	trailsize = FUNC14(node) - leadsize - size;
	ret = (void *)((uintptr_t)FUNC11(node) + leadsize);
	zeroed = FUNC16(node);
	if (zeroed)
		*zero = true;
	committed = FUNC12(node);
	if (committed)
		*commit = true;
	/* Split the lead. */
	if (leadsize != 0 &&
	    chunk_hooks->split(FUNC11(node),
	    FUNC14(node), leadsize, size, false, arena->ind)) {
		FUNC23(&arena->chunks_mtx);
		return (NULL);
	}
	/* Remove node from the tree. */
	FUNC21(chunks_szad, node);
	FUNC18(chunks_ad, node);
	FUNC4(arena, node, cache);
	if (leadsize != 0) {
		/* Insert the leading space as a smaller chunk. */
		FUNC15(node, leadsize);
		FUNC20(chunks_szad, node);
		FUNC17(chunks_ad, node);
		FUNC3(arena, node, cache);
		node = NULL;
	}
	if (trailsize != 0) {
		/* Split the trail. */
		if (chunk_hooks->split(ret, size + trailsize, size,
		    trailsize, false, arena->ind)) {
			if (dalloc_node && node != NULL)
				FUNC6(arena, node);
			FUNC23(&arena->chunks_mtx);
			FUNC10(arena, chunk_hooks, chunks_szad, chunks_ad,
			    cache, ret, size + trailsize, zeroed, committed);
			return (NULL);
		}
		/* Insert the trailing space as a smaller chunk. */
		if (node == NULL) {
			node = FUNC5(arena);
			if (node == NULL) {
				FUNC23(&arena->chunks_mtx);
				FUNC10(arena, chunk_hooks, chunks_szad,
				    chunks_ad, cache, ret, size + trailsize,
				    zeroed, committed);
				return (NULL);
			}
		}
		FUNC13(node, arena, (void *)((uintptr_t)(ret) + size),
		    trailsize, zeroed, committed);
		FUNC20(chunks_szad, node);
		FUNC17(chunks_ad, node);
		FUNC3(arena, node, cache);
		node = NULL;
	}
	if (!committed && chunk_hooks->commit(ret, size, 0, size, arena->ind)) {
		FUNC23(&arena->chunks_mtx);
		FUNC10(arena, chunk_hooks, chunks_szad, chunks_ad, cache,
		    ret, size, zeroed, committed);
		return (NULL);
	}
	FUNC23(&arena->chunks_mtx);

	FUNC7(dalloc_node || node != NULL);
	if (dalloc_node && node != NULL)
		FUNC6(arena, node);
	if (*zero) {
		if (!zeroed)
			FUNC24(ret, 0, size);
		else if (config_debug) {
			size_t i;
			size_t *p = (size_t *)(uintptr_t)ret;

			FUNC2(ret, size);
			for (i = 0; i < size / sizeof(size_t); i++)
				FUNC7(p[i] == 0);
		}
	}
	return (ret);
}