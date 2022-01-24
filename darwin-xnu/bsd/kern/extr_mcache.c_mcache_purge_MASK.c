#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  mc_sync_lock; int /*<<< orphan*/  mc_enable_cnt; } ;
typedef  TYPE_1__ mcache_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	mcache_t *cp = arg;

	FUNC2(cp);
	/*
	 * We cannot simply call mcache_cache_bkt_enable() from here as
	 * a bucket resize may be in flight and we would cause the CPU
	 * layers of the cache to point to different sizes.  Therefore,
	 * we simply increment the enable count so that during the next
	 * periodic cache update the buckets can be reenabled.
	 */
	FUNC0(&cp->mc_sync_lock);
	cp->mc_enable_cnt++;
	FUNC1(&cp->mc_sync_lock);
}