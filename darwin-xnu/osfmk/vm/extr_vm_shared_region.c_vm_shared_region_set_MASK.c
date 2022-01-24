#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_shared_region_t ;
typedef  TYPE_1__* task_t ;
struct TYPE_9__ {scalar_t__ sr_ref_count; struct TYPE_9__* shared_region; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void
FUNC8(
	task_t			task,
	vm_shared_region_t	new_shared_region)
{
	vm_shared_region_t	old_shared_region;

	FUNC0(
		("shared_region: -> set(%p, %p)\n",
		 (void )FUNC1(task),
		 (void *)FUNC1(new_shared_region)));

	FUNC3(task);
	FUNC6();

	old_shared_region = task->shared_region;
	if (new_shared_region) {
		FUNC2(new_shared_region->sr_ref_count > 0);
	}

	task->shared_region = new_shared_region;

	FUNC7();
	FUNC4(task);

	if (old_shared_region) {
		FUNC2(old_shared_region->sr_ref_count > 0);
		FUNC5(old_shared_region);
	}

	FUNC0(
		("shared_region: set(%p) <- old=%p new=%p\n",
		 (void )FUNC1(task),
		 (void )FUNC1(old_shared_region),
		 (void *)FUNC1(new_shared_region)));
}