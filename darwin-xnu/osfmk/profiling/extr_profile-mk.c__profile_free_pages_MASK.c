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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct TYPE_2__ {scalar_t__ debug; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

void
FUNC3(void *addr, size_t size)
{
	if (FUNC0(0)->debug) {
		FUNC2("Freed %d bytes for profiling, address 0x%x\n", (int)size, (int)addr);
	}

	FUNC1(kernel_map, (vm_offset_t)addr, size);
	return;
}