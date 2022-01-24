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
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

vm_shared_region_t
FUNC8(
	task_t		task)
{
	vm_shared_region_t	shared_region;

	FUNC0(
		("shared_region: -> get(%p)\n",
		 (void *)FUNC1(task)));

	FUNC3(task);
	FUNC5();
	shared_region = task->shared_region;
	if (shared_region) {
		FUNC2(shared_region->sr_ref_count > 0);
		FUNC6(shared_region);
	}
	FUNC7();
	FUNC4(task);

	FUNC0(
		("shared_region: get(%p) <- %p\n",
		 (void )FUNC1(task),
		 (void *)FUNC1(shared_region)));

	return shared_region;
}