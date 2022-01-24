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
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LAPIC_REDUCED_INTERRUPT_BASE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TIMER ; 
 int /*<<< orphan*/  TIMER_CURRENT_COUNT ; 
 int /*<<< orphan*/  TIMER_INITIAL_COUNT ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ lapic_os_enabled ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

void
FUNC6(void)
{
	boolean_t state;

	if (lapic_os_enabled == FALSE)
		return;

	state = FUNC5(FALSE);

 	if (FUNC0(LAPIC_REDUCED_INTERRUPT_BASE, TIMER)) {
		/*
		 * Bogus SMI handler enables interrupts but does not know about
		 * local APIC interrupt sources. When APIC timer counts down to
		 * zero while in SMM, local APIC will end up waiting for an EOI
		 * but no interrupt was delivered to the OS.
 		 */
		FUNC3();

		/*
		 * timer is one-shot, trigger another quick countdown to trigger
		 * another timer interrupt.
		 */
		if (FUNC1(TIMER_CURRENT_COUNT) == 0) {
			FUNC2(TIMER_INITIAL_COUNT, 1);
		}

		FUNC4("lapic_smm_restore\n");
	}

	FUNC5(state);
}