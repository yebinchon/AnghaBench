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
struct mtrr_fix_range {int /*<<< orphan*/  types; } ;

/* Variables and functions */
 scalar_t__ MSR_IA32_MTRR_FIX16K_80000 ; 
 scalar_t__ MSR_IA32_MTRR_FIX16K_A0000 ; 
 scalar_t__ MSR_IA32_MTRR_FIX4K_C0000 ; 
 scalar_t__ MSR_IA32_MTRR_FIX64K_00000 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(const struct mtrr_fix_range * range)
{
	int i;

	/* assume 11 fix range registers */
	FUNC0(MSR_IA32_MTRR_FIX64K_00000, range[0].types);
	FUNC0(MSR_IA32_MTRR_FIX16K_80000, range[1].types);
	FUNC0(MSR_IA32_MTRR_FIX16K_A0000, range[2].types);
	for (i = 0; i < 8; i++)
		FUNC0(MSR_IA32_MTRR_FIX4K_C0000 + i, range[3 + i].types);
}