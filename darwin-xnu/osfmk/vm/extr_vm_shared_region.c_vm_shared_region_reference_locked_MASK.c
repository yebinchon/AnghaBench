#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_shared_region_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_4__ {scalar_t__ sr_ref_count; int /*<<< orphan*/ * sr_timer_call; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_shared_region_lock ; 

__attribute__((used)) static void
FUNC6(
	vm_shared_region_t	shared_region)
{
	FUNC0(&vm_shared_region_lock, LCK_MTX_ASSERT_OWNED);

	FUNC1(
		("shared_region: -> reference_locked(%p)\n",
		 (void *)FUNC2(shared_region)));
	FUNC3(shared_region->sr_ref_count > 0);
	shared_region->sr_ref_count++;

	if (shared_region->sr_timer_call != NULL) {
		boolean_t cancelled;

		/* cancel and free any pending timeout */
		cancelled = FUNC4(shared_region->sr_timer_call);
		if (cancelled) {
			FUNC5(shared_region->sr_timer_call);
			shared_region->sr_timer_call = NULL;
			/* release the reference held by the cancelled timer */
			shared_region->sr_ref_count--;
		} else {
			/* the timer will drop the reference and free itself */
		}
	}

	FUNC1(
		("shared_region: reference_locked(%p) <- %d\n",
		 (void )FUNC2(shared_region),
		 shared_region->sr_ref_count));
}