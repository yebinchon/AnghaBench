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
 int /*<<< orphan*/  TOUCHPAD_FILTER_TOUCH_PERIOD ; 
 int /*<<< orphan*/  TOUCH_HVOLT_2V7 ; 
 int /*<<< orphan*/  TOUCH_HVOLT_ATTEN_1V ; 
 int /*<<< orphan*/  TOUCH_LVOLT_0V5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tp_example_read_task ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
    // Initialize touch pad peripheral.
    // The default fsm mode is software trigger mode.
    FUNC1();
    // Set reference voltage for charging/discharging
    // In this case, the high reference valtage will be 2.7V - 1V = 1.7V
    // The low reference voltage will be 0.5
    // The larger the range, the larger the pulse count value.
    FUNC2(TOUCH_HVOLT_2V7, TOUCH_LVOLT_0V5, TOUCH_HVOLT_ATTEN_1V);
    FUNC3();
#if TOUCH_FILTER_MODE_EN
    touch_pad_filter_start(TOUCHPAD_FILTER_TOUCH_PERIOD);
#endif
    // Start task to read values sensed by pads
    FUNC4(&tp_example_read_task, "touch_pad_read_task", 2048, NULL, 5, NULL);
}