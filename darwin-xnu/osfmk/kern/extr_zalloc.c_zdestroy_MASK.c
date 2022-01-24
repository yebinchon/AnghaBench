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
typedef  TYPE_2__* zone_t ;
struct TYPE_9__ {int /*<<< orphan*/  all_free; int /*<<< orphan*/  intermediate; int /*<<< orphan*/  all_used; } ;
struct TYPE_10__ {int zone_valid; int doing_alloc_without_vm_priv; int doing_alloc_with_vm_priv; int async_pending; int waiting; int async_prio_refill; scalar_t__ count; scalar_t__ countfree; scalar_t__ cur_size; scalar_t__ page_count; scalar_t__ count_all_free_pages; unsigned int index; TYPE_1__ pages; int /*<<< orphan*/  zone_name; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  all_zones_lock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ num_zones_in_use ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  zone_empty_bitmap ; 

void
FUNC12(zone_t z)
{
	unsigned int zindex;

	FUNC0(z != NULL);

	FUNC5(z);
	FUNC0(z->zone_valid);

	/* Assert that the zone does not have any allocations in flight */
	FUNC0(z->doing_alloc_without_vm_priv == FALSE);
	FUNC0(z->doing_alloc_with_vm_priv == FALSE);
	FUNC0(z->async_pending == FALSE);
	FUNC0(z->waiting == FALSE);
	FUNC0(z->async_prio_refill == FALSE);

#if !KASAN_ZALLOC
	/*
	 * Unset the valid bit. We'll hit an assert failure on further operations on this zone, until zinit() is called again.
	 * Leave the zone valid for KASan as we will see zfree's on quarantined free elements even after the zone is destroyed.
	 */
	z->zone_valid = FALSE;
#endif
	FUNC10(z);

#if CONFIG_ZCACHE
	/* Drain the per-cpu caches if caching is enabled for the zone. */
	if (zone_caching_enabled(z)) {
		panic("zdestroy: Zone caching enabled for zone %s", z->zone_name);
	}
#endif /* CONFIG_ZCACHE */

	/* Dump all the free elements */
	FUNC3(z);

#if	CONFIG_GZALLOC
	/* If the zone is gzalloc managed dump all the elements in the free cache */
	gzalloc_empty_free_cache(z);
#endif

	FUNC5(z);

#if !KASAN_ZALLOC
	/* Assert that all counts are zero */
	FUNC0(z->count == 0);
	FUNC0(z->countfree == 0);
	FUNC0(z->cur_size == 0);
	FUNC0(z->page_count == 0);
	FUNC0(z->count_all_free_pages == 0);

	/* Assert that all queues except the foreign queue are empty. The zone allocator doesn't know how to free up foreign memory. */
	FUNC0(FUNC7(&z->pages.all_used));
	FUNC0(FUNC7(&z->pages.intermediate));
	FUNC0(FUNC7(&z->pages.all_free));
#endif

	zindex = z->index;

	FUNC10(z);

	FUNC8(&all_zones_lock);

	FUNC0(!FUNC2(zone_empty_bitmap, zindex));
	/* Mark the zone as empty in the bitmap */
	FUNC1(zone_empty_bitmap, zindex);
	num_zones_in_use--;
	FUNC0(num_zones_in_use > 0);

	FUNC9(&all_zones_lock);
}