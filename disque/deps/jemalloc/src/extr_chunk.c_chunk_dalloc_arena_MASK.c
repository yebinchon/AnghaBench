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
struct TYPE_9__ {int (* decommit ) (void*,size_t,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* purge ) (void*,size_t,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* dalloc ) (void*,size_t,int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ chunk_hooks_t ;
struct TYPE_10__ {int /*<<< orphan*/  chunks_ad_retained; int /*<<< orphan*/  chunks_szad_retained; int /*<<< orphan*/  ind; } ;
typedef  TYPE_2__ arena_t ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,void*,size_t,int,int) ; 
 size_t chunksize_mask ; 
 int /*<<< orphan*/  FUNC4 (void*,size_t,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (void*,size_t,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,size_t,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

void
FUNC7(arena_t *arena, chunk_hooks_t *chunk_hooks, void *chunk,
    size_t size, bool zeroed, bool committed)
{

	FUNC1(chunk != NULL);
	FUNC1(FUNC0(chunk) == chunk);
	FUNC1(size != 0);
	FUNC1((size & chunksize_mask) == 0);

	FUNC2(arena, chunk_hooks);
	/* Try to deallocate. */
	if (!chunk_hooks->dalloc(chunk, size, committed, arena->ind))
		return;
	/* Try to decommit; purge if that fails. */
	if (committed) {
		committed = chunk_hooks->decommit(chunk, size, 0, size,
		    arena->ind);
	}
	zeroed = !committed || !chunk_hooks->purge(chunk, size, 0, size,
	    arena->ind);
	FUNC3(arena, chunk_hooks, &arena->chunks_szad_retained,
	    &arena->chunks_ad_retained, false, chunk, size, zeroed, committed);
}