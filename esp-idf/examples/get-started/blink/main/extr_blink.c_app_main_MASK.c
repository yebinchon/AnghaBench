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
 int /*<<< orphan*/  BLINK_GPIO ; 
 int /*<<< orphan*/  GPIO_MODE_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(void)
{
    /* Configure the IOMUX register for pad BLINK_GPIO (some pads are
       muxed to GPIO on reset already, but some default to other
       functions and need to be switched to GPIO. Consult the
       Technical Reference for a list of pads and their default
       functions.)
    */
    FUNC0(BLINK_GPIO);
    /* Set the GPIO as a push/pull output */
    FUNC1(BLINK_GPIO, GPIO_MODE_OUTPUT);
    while(1) {
        /* Blink off (output low) */
	FUNC3("Turning off the LED\n");
        FUNC2(BLINK_GPIO, 0);
        FUNC4(1000 / portTICK_PERIOD_MS);
        /* Blink on (output high) */
	FUNC3("Turning on the LED\n");
        FUNC2(BLINK_GPIO, 1);
        FUNC4(1000 / portTICK_PERIOD_MS);
    }
}