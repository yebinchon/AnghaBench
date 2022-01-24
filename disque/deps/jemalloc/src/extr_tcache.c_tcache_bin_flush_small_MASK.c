#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_18__ {int /*<<< orphan*/  prof_accumbytes; } ;
typedef  TYPE_3__ tcache_t ;
struct TYPE_17__ {scalar_t__ nrequests; } ;
struct TYPE_19__ {unsigned int ncached; void** avail; int low_water; TYPE_2__ tstats; } ;
typedef  TYPE_4__ tcache_bin_t ;
typedef  size_t szind_t ;
struct TYPE_20__ {TYPE_7__* bins; } ;
typedef  TYPE_5__ arena_t ;
struct TYPE_21__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_6__ arena_chunk_t ;
typedef  int /*<<< orphan*/  arena_chunk_map_bits_t ;
struct TYPE_16__ {int /*<<< orphan*/  nrequests; int /*<<< orphan*/  nflushes; } ;
struct TYPE_22__ {int /*<<< orphan*/  lock; TYPE_1__ stats; } ;
typedef  TYPE_7__ arena_bin_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 uintptr_t LG_PAGE ; 
 size_t NBINS ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_6__*,size_t) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_6__*,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ config_prof ; 
 scalar_t__ config_stats ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void**,void**,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void
FUNC11(tsd_t *tsd, tcache_t *tcache, tcache_bin_t *tbin,
    szind_t binind, unsigned rem)
{
	arena_t *arena;
	void *ptr;
	unsigned i, nflush, ndeferred;
	bool merged_stats = false;

	FUNC5(binind < NBINS);
	FUNC5(rem <= tbin->ncached);

	arena = FUNC2(tsd, NULL);
	FUNC5(arena != NULL);
	for (nflush = tbin->ncached - rem; nflush > 0; nflush = ndeferred) {
		/* Lock the arena bin associated with the first object. */
		arena_chunk_t *chunk = (arena_chunk_t *)FUNC0(
		    tbin->avail[0]);
		arena_t *bin_arena = FUNC6(&chunk->node);
		arena_bin_t *bin = &bin_arena->bins[binind];

		if (config_prof && bin_arena == arena) {
			if (FUNC4(arena, tcache->prof_accumbytes))
				FUNC10();
			tcache->prof_accumbytes = 0;
		}

		FUNC7(&bin->lock);
		if (config_stats && bin_arena == arena) {
			FUNC5(!merged_stats);
			merged_stats = true;
			bin->stats.nflushes++;
			bin->stats.nrequests += tbin->tstats.nrequests;
			tbin->tstats.nrequests = 0;
		}
		ndeferred = 0;
		for (i = 0; i < nflush; i++) {
			ptr = tbin->avail[i];
			FUNC5(ptr != NULL);
			chunk = (arena_chunk_t *)FUNC0(ptr);
			if (FUNC6(&chunk->node) == bin_arena) {
				size_t pageind = ((uintptr_t)ptr -
				    (uintptr_t)chunk) >> LG_PAGE;
				arena_chunk_map_bits_t *bitselm =
				    FUNC1(chunk, pageind);
				FUNC3(bin_arena, chunk,
				    ptr, bitselm);
			} else {
				/*
				 * This object was allocated via a different
				 * arena bin than the one that is currently
				 * locked.  Stash the object, so that it can be
				 * handled in a future pass.
				 */
				tbin->avail[ndeferred] = ptr;
				ndeferred++;
			}
		}
		FUNC8(&bin->lock);
	}
	if (config_stats && !merged_stats) {
		/*
		 * The flush loop didn't happen to flush to this thread's
		 * arena, so the stats didn't get merged.  Manually do so now.
		 */
		arena_bin_t *bin = &arena->bins[binind];
		FUNC7(&bin->lock);
		bin->stats.nflushes++;
		bin->stats.nrequests += tbin->tstats.nrequests;
		tbin->tstats.nrequests = 0;
		FUNC8(&bin->lock);
	}

	FUNC9(tbin->avail, &tbin->avail[tbin->ncached - rem],
	    rem * sizeof(void *));
	tbin->ncached = rem;
	if ((int)tbin->ncached < tbin->low_water)
		tbin->low_water = tbin->ncached;
}