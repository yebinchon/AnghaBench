#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_23__ {int /*<<< orphan*/  prof_accumbytes; TYPE_6__* tbins; } ;
typedef  TYPE_5__ tcache_t ;
struct TYPE_22__ {scalar_t__ nrequests; } ;
struct TYPE_24__ {TYPE_4__ tstats; } ;
typedef  TYPE_6__ tcache_bin_t ;
struct TYPE_21__ {TYPE_2__* lstats; int /*<<< orphan*/  nrequests_large; } ;
struct TYPE_25__ {int /*<<< orphan*/  lock; TYPE_3__ stats; TYPE_8__* bins; } ;
typedef  TYPE_7__ arena_t ;
struct TYPE_19__ {int /*<<< orphan*/  nrequests; } ;
struct TYPE_26__ {int /*<<< orphan*/  lock; TYPE_1__ stats; } ;
typedef  TYPE_8__ arena_bin_t ;
struct TYPE_20__ {int /*<<< orphan*/  nrequests; } ;

/* Variables and functions */
 unsigned int NBINS ; 
 TYPE_7__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 scalar_t__ config_prof ; 
 scalar_t__ config_stats ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int nhbins ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_6__*,unsigned int,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_6__*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(tsd_t *tsd, tcache_t *tcache)
{
	arena_t *arena;
	unsigned i;

	arena = FUNC0(tsd, NULL);
	FUNC6(tcache, arena);

	for (i = 0; i < NBINS; i++) {
		tcache_bin_t *tbin = &tcache->tbins[i];
		FUNC8(tsd, tcache, tbin, i, 0);

		if (config_stats && tbin->tstats.nrequests != 0) {
			arena_bin_t *bin = &arena->bins[i];
			FUNC3(&bin->lock);
			bin->stats.nrequests += tbin->tstats.nrequests;
			FUNC4(&bin->lock);
		}
	}

	for (; i < nhbins; i++) {
		tcache_bin_t *tbin = &tcache->tbins[i];
		FUNC7(tsd, tbin, i, 0, tcache);

		if (config_stats && tbin->tstats.nrequests != 0) {
			FUNC3(&arena->lock);
			arena->stats.nrequests_large += tbin->tstats.nrequests;
			arena->stats.lstats[i - NBINS].nrequests +=
			    tbin->tstats.nrequests;
			FUNC4(&arena->lock);
		}
	}

	if (config_prof && tcache->prof_accumbytes > 0 &&
	    FUNC1(arena, tcache->prof_accumbytes))
		FUNC5();

	FUNC2(tsd, tcache, false, true);
}