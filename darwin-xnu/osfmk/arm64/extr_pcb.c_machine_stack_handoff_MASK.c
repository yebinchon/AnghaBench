#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_3__* thread_t ;
struct thread_kernel_state {int dummy; } ;
typedef  scalar_t__ pmap_t ;
typedef  int /*<<< orphan*/  cpu_data_t ;
struct TYPE_11__ {int /*<<< orphan*/ * CpuDatap; scalar_t__ kstackptr; } ;
struct TYPE_12__ {scalar_t__ reserved_stack; TYPE_2__ machine; TYPE_1__* map; scalar_t__ kernel_stack; } ;
struct TYPE_10__ {scalar_t__ pmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ kernel_stack_size ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

void
FUNC7(
		      thread_t old,
		      thread_t new)
{
	vm_offset_t     stack;
	pmap_t          new_pmap;
	cpu_data_t	*cpu_data_ptr;

	FUNC2(old);

	stack = FUNC4(old);
	cpu_data_ptr = FUNC1();
	new->kernel_stack = stack;
	new->machine.kstackptr = stack + kernel_stack_size - sizeof(struct thread_kernel_state);
	if (stack == old->reserved_stack) {
		FUNC0(new->reserved_stack);
		old->reserved_stack = new->reserved_stack;
		new->reserved_stack = stack;
	}


	new_pmap = new->map->pmap;
	if (old->map->pmap != new_pmap)
		FUNC5(new_pmap);

	new->machine.CpuDatap = cpu_data_ptr;
	FUNC3(new);
	FUNC6(new);

	return;
}