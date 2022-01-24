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
 int /*<<< orphan*/  BUTTONS_NUM ; 
 int /*<<< orphan*/  BUTTONS_POWER_AHB1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int configured ; 
 int /*<<< orphan*/  pin_buttons ; 

void FUNC2(void) {
	// enable clock to the relevant IO PORT(s)
	FUNC1(BUTTONS_POWER_AHB1, ENABLE);

    // configure the gpio pins to read from the buttons/switches
    FUNC0(pin_buttons, BUTTONS_NUM);

	configured = true;
}