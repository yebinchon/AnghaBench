#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* queue_entry_t ;
typedef  TYPE_2__* pv_hashed_entry_t ;
struct TYPE_11__ {int /*<<< orphan*/  options; } ;
struct TYPE_9__ {void* next; } ;
struct TYPE_10__ {TYPE_1__ qlink; } ;

/* Variables and functions */
 TYPE_2__* PV_HASHED_ENTRY_NULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  TH_OPT_VMPRIV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  mapping_replenish_event ; 
 scalar_t__ mappingrecurse ; 
 int pmap_kernel_reserve_replenish_stat ; 
 int /*<<< orphan*/  pmap_mapping_thread_wakeups ; 
 scalar_t__ pmap_pv_throttled_waiters ; 
 int /*<<< orphan*/  pmap_user_pv_throttle_event ; 
 int pmap_user_reserve_replenish_stat ; 
 unsigned int pv_hashed_alloc_chunk ; 
 scalar_t__ pv_hashed_free_count ; 
 unsigned int pv_hashed_kern_alloc_chunk ; 
 scalar_t__ pv_hashed_kern_free_count ; 
 scalar_t__ pv_hashed_kern_low_water_mark ; 
 int /*<<< orphan*/  pv_hashed_list_zone ; 
 scalar_t__ pv_hashed_low_water_mark ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((noreturn))
void
FUNC7(void)
{
	pv_hashed_entry_t	pvh_e;
	pv_hashed_entry_t	pvh_eh;
	pv_hashed_entry_t	pvh_et;
	int			pv_cnt;
	unsigned             	i;

	/* We qualify for VM privileges...*/
	FUNC3()->options |= TH_OPT_VMPRIV;

	for (;;) {

		while (pv_hashed_kern_free_count < pv_hashed_kern_low_water_mark) {
			pv_cnt = 0;
			pvh_eh = pvh_et = PV_HASHED_ENTRY_NULL;

			for (i = 0; i < pv_hashed_kern_alloc_chunk; i++) {
				pvh_e = (pv_hashed_entry_t) FUNC6(pv_hashed_list_zone);
				pvh_e->qlink.next = (queue_entry_t)pvh_eh;
				pvh_eh = pvh_e;

				if (pvh_et == PV_HASHED_ENTRY_NULL)
					pvh_et = pvh_e;
				pv_cnt++;
			}
			pmap_kernel_reserve_replenish_stat += pv_cnt;
			FUNC1(pvh_eh, pvh_et, pv_cnt);
		}

		pv_cnt = 0;
		pvh_eh = pvh_et = PV_HASHED_ENTRY_NULL;

		if (pv_hashed_free_count < pv_hashed_low_water_mark) {
			for (i = 0; i < pv_hashed_alloc_chunk; i++) {
				pvh_e = (pv_hashed_entry_t) FUNC6(pv_hashed_list_zone);

				pvh_e->qlink.next = (queue_entry_t)pvh_eh;
				pvh_eh = pvh_e;

				if (pvh_et == PV_HASHED_ENTRY_NULL)
					pvh_et = pvh_e;
				pv_cnt++;
			}
			pmap_user_reserve_replenish_stat += pv_cnt;
			FUNC0(pvh_eh, pvh_et, pv_cnt);
		}
/* Wake threads throttled while the kernel reserve was being replenished.
 */
		if (pmap_pv_throttled_waiters) {
			pmap_pv_throttled_waiters = 0;
			FUNC5(&pmap_user_pv_throttle_event);
		}
		/* Check if the kernel pool has been depleted since the
		 * first pass, to reduce refill latency.
		 */
		if (pv_hashed_kern_free_count < pv_hashed_kern_low_water_mark)
			continue;
		/* Block sans continuation to avoid yielding kernel stack */
		FUNC2(&mapping_replenish_event, THREAD_UNINT);
		mappingrecurse = 0;
		FUNC4(THREAD_CONTINUE_NULL);
		pmap_mapping_thread_wakeups++;
	}
}