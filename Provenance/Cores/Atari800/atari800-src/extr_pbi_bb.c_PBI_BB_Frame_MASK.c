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
 int /*<<< orphan*/  BB_BUTTON_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  PBI_IRQ ; 
 int /*<<< orphan*/  POKEY_IRQEN ; 
 int /*<<< orphan*/  POKEY_OFFSET_IRQEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ buttondown ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(void)
{
	static int count = 0;
	if (buttondown) {
	 	if (count < 1) count++;
		else {
			FUNC0(FUNC2("blackbox button up\n"));
			PBI_IRQ &= ~BB_BUTTON_IRQ_MASK;
			/* update pokey IRQ status */
			FUNC1(POKEY_OFFSET_IRQEN, POKEY_IRQEN);
			buttondown = FALSE;
			count = 0;
		}
	}
}