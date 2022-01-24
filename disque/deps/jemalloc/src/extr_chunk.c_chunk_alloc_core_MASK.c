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
typedef  scalar_t__ dss_prec_t ;
typedef  int /*<<< orphan*/  chunk_hooks_t ;
struct TYPE_5__ {int /*<<< orphan*/  chunks_ad_retained; int /*<<< orphan*/  chunks_szad_retained; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHUNK_HOOKS_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (TYPE_1__*,void*,size_t,size_t,int*,int*) ; 
 void* FUNC2 (size_t,size_t,int*,int*) ; 
 void* FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,void*,size_t,size_t,int*,int*,int) ; 
 size_t chunksize_mask ; 
 scalar_t__ dss_prec_primary ; 
 scalar_t__ dss_prec_secondary ; 
 scalar_t__ have_dss ; 

__attribute__((used)) static void *
FUNC4(arena_t *arena, void *new_addr, size_t size, size_t alignment,
    bool *zero, bool *commit, dss_prec_t dss_prec)
{
	void *ret;
	chunk_hooks_t chunk_hooks = CHUNK_HOOKS_INITIALIZER;

	FUNC0(size != 0);
	FUNC0((size & chunksize_mask) == 0);
	FUNC0(alignment != 0);
	FUNC0((alignment & chunksize_mask) == 0);

	/* Retained. */
	if ((ret = FUNC3(arena, &chunk_hooks,
	    &arena->chunks_szad_retained, &arena->chunks_ad_retained, false,
	    new_addr, size, alignment, zero, commit, true)) != NULL)
		return (ret);

	/* "primary" dss. */
	if (have_dss && dss_prec == dss_prec_primary && (ret =
	    FUNC1(arena, new_addr, size, alignment, zero, commit)) !=
	    NULL)
		return (ret);
	/*
	 * mmap.  Requesting an address is not implemented for
	 * chunk_alloc_mmap(), so only call it if (new_addr == NULL).
	 */
	if (new_addr == NULL && (ret = FUNC2(size, alignment, zero,
	    commit)) != NULL)
		return (ret);
	/* "secondary" dss. */
	if (have_dss && dss_prec == dss_prec_secondary && (ret =
	    FUNC1(arena, new_addr, size, alignment, zero, commit)) !=
	    NULL)
		return (ret);

	/* All strategies for allocation failed. */
	return (NULL);
}