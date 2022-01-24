#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  void* caddr_t ;
struct TYPE_2__ {scalar_t__ debug; scalar_t__ active; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_map ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,char,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

void *
FUNC5 (size_t size)
{
	vm_offset_t addr;

	/*
	 * For the MK, we can't support allocating pages at runtime, because we
	 * might be at interrupt level, so abort if we didn't size the table
	 * properly.
	 */

	if (FUNC0(0)->active) {
		FUNC3("Call to _profile_alloc_pages while profiling is running.");
	}

	if (FUNC1(kernel_map, &addr, size)) {
		FUNC3("Could not allocate memory for profiling");
	}

	FUNC2((void *)addr, '\0', size);
	if (FUNC0(0)->debug) {
		FUNC4("Allocated %d bytes for profiling, address 0x%x\n", (int)size, (int)addr);
	}

	return((caddr_t)addr);
}