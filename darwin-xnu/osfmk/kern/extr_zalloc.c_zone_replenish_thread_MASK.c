#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_8__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* zone_t ;
typedef  int vm_size_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ kern_return_t ;
typedef  TYPE_1__* event_t ;
struct TYPE_10__ {int /*<<< orphan*/  options; } ;
struct TYPE_9__ {int zone_valid; int prio_refill_watermark; int cur_size; int count; int elem_size; scalar_t__ doing_alloc_without_vm_priv; scalar_t__ doing_alloc_with_vm_priv; scalar_t__ async_prio_refill; int /*<<< orphan*/  zone_replenish_thread; scalar_t__ zone_replenishing; scalar_t__ noencrypt; int /*<<< orphan*/  alloc_size; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ KERN_NO_SPACE ; 
 scalar_t__ KERN_RESOURCE_SHORTAGE ; 
 scalar_t__ KERN_SUCCESS ; 
 int KMA_KOBJECT ; 
 int KMA_NOENCRYPT ; 
 int KMA_NOPAGEWAIT ; 
 int NSEC_PER_USEC ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  TH_OPT_VMPRIV ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_ZONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 TYPE_8__* FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  kernel_map ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  vm_pageout_garbage_collect ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zone_map ; 
 int /*<<< orphan*/  zone_replenish_loops ; 
 int /*<<< orphan*/  zone_replenish_wakeups ; 

__attribute__((used)) __attribute__((noreturn))
static void
FUNC14(zone_t z)
{
	vm_size_t free_size;
	FUNC4()->options |= TH_OPT_VMPRIV;

	for (;;) {
		FUNC7(z);
		FUNC1(z->zone_valid);
		z->zone_replenishing = TRUE;
		FUNC1(z->prio_refill_watermark != 0);
		while ((free_size = (z->cur_size - (z->count * z->elem_size))) < (z->prio_refill_watermark * z->elem_size)) {
			FUNC1(z->doing_alloc_without_vm_priv == FALSE);
			FUNC1(z->doing_alloc_with_vm_priv == FALSE);
			FUNC1(z->async_prio_refill == TRUE);

			FUNC11(z);
			int	zflags = KMA_KOBJECT|KMA_NOPAGEWAIT;
			vm_offset_t space, alloc_size;
			kern_return_t kr;
				
			if (FUNC12())
				alloc_size = FUNC8(z->elem_size);
			else
				alloc_size = z->alloc_size;
				
			if (z->noencrypt)
				zflags |= KMA_NOENCRYPT;
				
			/* Trigger jetsams via the vm_pageout_garbage_collect thread if we're running out of zone memory */
			if (FUNC5()) {
				FUNC10((event_t) &vm_pageout_garbage_collect);
			}

			kr = FUNC6(zone_map, &space, alloc_size, 0, zflags, VM_KERN_MEMORY_ZONE);

			if (kr == KERN_SUCCESS) {
				FUNC13(z, space, alloc_size);
			} else if (kr == KERN_RESOURCE_SHORTAGE) {
				FUNC0();
			} else if (kr == KERN_NO_SPACE) {
				kr = FUNC6(kernel_map, &space, alloc_size, 0, zflags, VM_KERN_MEMORY_ZONE);
				if (kr == KERN_SUCCESS) {
					FUNC13(z, space, alloc_size);
				} else {
					FUNC3(&z->zone_replenish_thread, THREAD_UNINT, 1, 100 * NSEC_PER_USEC);
					FUNC9(THREAD_CONTINUE_NULL);
				}
			}

			FUNC7(z);
			FUNC1(z->zone_valid);
			zone_replenish_loops++;
		}

		z->zone_replenishing = FALSE;
		/* Signal any potential throttled consumers, terminating
		 * their timer-bounded waits.
		 */
		FUNC10(z);

		FUNC2(&z->zone_replenish_thread, THREAD_UNINT);
		FUNC11(z);
		FUNC9(THREAD_CONTINUE_NULL);
		zone_replenish_wakeups++;
	}
}