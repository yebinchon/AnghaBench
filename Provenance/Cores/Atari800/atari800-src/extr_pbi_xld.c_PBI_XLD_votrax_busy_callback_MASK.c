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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PBI_IRQ ; 
 int /*<<< orphan*/  POKEY_IRQEN ; 
 int /*<<< orphan*/  POKEY_OFFSET_IRQEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VOICE_MASK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int votrax_latch ; 

void FUNC4(int busy_status)
{
	if (!busy_status && (votrax_latch & 0x80)){
		/* busy->idle and IRQ enabled */
		FUNC1(FUNC3("votrax IRQ generated\n"));
		FUNC0();		
		PBI_IRQ |= VOICE_MASK;
	}
	else if (busy_status && (PBI_IRQ & VOICE_MASK)) {
		/* idle->busy and PBI_IRQ set */
		PBI_IRQ &= ~VOICE_MASK;
		/* update pokey IRQ status */
		FUNC2(POKEY_OFFSET_IRQEN, POKEY_IRQEN);
	}
}