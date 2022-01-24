#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int mc_flags; int /*<<< orphan*/  mc_bkt_lock; scalar_t__ mc_bkt_contention; scalar_t__ mc_bkt_contention_prev; TYPE_1__* cache_bkttype; scalar_t__ mc_chunksize; int /*<<< orphan*/  mc_sync_lock; scalar_t__ mc_enable_cnt; } ;
typedef  TYPE_2__ mcache_t ;
struct TYPE_6__ {unsigned int bt_maxbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MCF_NOCPUCACHE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int mcache_bkt_contention ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  mcache_cache_bkt_resize ; 
 int /*<<< orphan*/  mcache_cache_enable ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  mcache_llock ; 

__attribute__((used)) static void
FUNC7(mcache_t *cp)
{
	int need_bkt_resize = 0;
	int need_bkt_reenable = 0;

	FUNC2(mcache_llock, LCK_MTX_ASSERT_OWNED);

	FUNC5(cp);

	/*
	 * Cache resize and post-purge reenable are mutually exclusive.
	 * If the cache was previously purged, there is no point of
	 * increasing the bucket size as there was an indication of
	 * memory pressure on the system.
	 */
	FUNC3(&cp->mc_sync_lock);
	if (!(cp->mc_flags & MCF_NOCPUCACHE) && cp->mc_enable_cnt)
		need_bkt_reenable = 1;
	FUNC4(&cp->mc_sync_lock);

	FUNC0(&cp->mc_bkt_lock);
	/*
	 * If the contention count is greater than the threshold, and if
	 * we are not already at the maximum bucket size, increase it.
	 * Otherwise, if this cache was previously purged by the user
	 * then we simply reenable it.
	 */
	if ((unsigned int)cp->mc_chunksize < cp->cache_bkttype->bt_maxbuf &&
	    (int)(cp->mc_bkt_contention - cp->mc_bkt_contention_prev) >
	    mcache_bkt_contention && !need_bkt_reenable)
		need_bkt_resize = 1;

	cp ->mc_bkt_contention_prev = cp->mc_bkt_contention;
	FUNC1(&cp->mc_bkt_lock);

	if (need_bkt_resize)
		FUNC6(mcache_cache_bkt_resize, cp);
	else if (need_bkt_reenable)
		FUNC6(mcache_cache_enable, cp);
}