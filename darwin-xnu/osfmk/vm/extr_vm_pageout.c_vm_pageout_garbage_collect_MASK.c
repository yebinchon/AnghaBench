#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  int /*<<< orphan*/  event_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ vm_page_free_count ; 
 scalar_t__ vm_page_free_target ; 

void
FUNC10(int collect)
{
	if (collect) {
		if (FUNC5()) {
			/*
			 * Woken up by the zone allocator for zone-map-exhaustion jetsams.
			 *
			 * Bail out after calling zone_gc (which triggers the
			 * zone-map-exhaustion jetsams). If we fall through, the subsequent
			 * operations that clear out a bunch of caches might allocate zone
			 * memory themselves (for eg. vm_map operations would need VM map
			 * entries). Since the zone map is almost full at this point, we
			 * could end up with a panic. We just need to quickly jetsam a
			 * process and exit here.
			 *
			 * It could so happen that we were woken up to relieve memory
			 * pressure and the zone map also happened to be near its limit at
			 * the time, in which case we'll skip out early. But that should be
			 * ok; if memory pressure persists, the thread will simply be woken
			 * up again.
			 */
			FUNC4(TRUE);

		} else {
			/* Woken up by vm_pageout_scan or compute_pageout_gc_throttle. */
			boolean_t buf_large_zfree = FALSE;
			boolean_t first_try = TRUE;

			FUNC7();

			FUNC3();
			FUNC6(FALSE);

			do {
				if (&consider_buffer_cache_collect != NULL) {
					buf_large_zfree = FUNC1)(0);
				}
				if (first_try == TRUE || buf_large_zfree == TRUE) {
					/*
					 * consider_zone_gc should be last, because the other operations
					 * might return memory to zones.
					 */
					FUNC4(FALSE);
				}
				first_try = FALSE;

			} while (buf_large_zfree == TRUE && vm_page_free_count < vm_page_free_target);

			FUNC2();
		}
	}

	FUNC0((event_t) &vm_pageout_garbage_collect, THREAD_UNINT);

	FUNC9((thread_continue_t) vm_pageout_garbage_collect, (void *)1);
	/*NOTREACHED*/
}