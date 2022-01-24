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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * IdlePML4 ; 
 size_t KERNEL_PML4_INDEX ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

uint64_t
FUNC3(void)
{
	IdlePML4[0] = IdlePML4[KERNEL_PML4_INDEX];
	uint64_t oldcr3 = FUNC1();
	FUNC2((uint32_t) (uintptr_t)FUNC0(IdlePML4));
	return oldcr3;
}