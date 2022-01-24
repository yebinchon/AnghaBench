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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_APIC_BASE ; 
 int MSR_IA32_APIC_BASE_EXTENDED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC3(void)
{
	uint32_t	lo;
	uint32_t	hi;

	FUNC1(MSR_IA32_APIC_BASE, lo, hi);
	if ((lo & MSR_IA32_APIC_BASE_EXTENDED) == 0)  {
		lo |= MSR_IA32_APIC_BASE_EXTENDED;
		FUNC2(MSR_IA32_APIC_BASE, lo, hi);
		FUNC0("x2APIC mode enabled\n");
	}
}