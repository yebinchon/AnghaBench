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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  tt_entry_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cpu_tte ; 

tt_entry_t *
FUNC3(vm_offset_t va)
{
#if __ARM64_TWO_LEVEL_PMAP__
	tt_entry_t *tte2;
	tte2 = cpu_tte + L2_TABLE_INDEX(va);
#else
	tt_entry_t *tte1, *tte2;
	tte1 = cpu_tte + FUNC0(va);
	tte2 = FUNC2(tte1) + FUNC1(va);
#endif
	return tte2;
}