#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* task_t ;
struct TYPE_6__ {TYPE_1__* map; } ;
struct TYPE_5__ {int /*<<< orphan*/  pmap; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ VM_CONFIG_SWAP_IS_ACTIVE ; 
 int c_segment_pages_compressed ; 
 TYPE_2__* kernel_task ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 

int
FUNC3(task_t task)
{
	if (task == kernel_task)
		return (0);

	if (VM_CONFIG_SWAP_IS_ACTIVE) {
		if ((FUNC2() || FUNC0()) &&
		    (unsigned int)FUNC1(task->map->pmap) > (c_segment_pages_compressed / 4))
			return (1);
	}
	return (0);
}