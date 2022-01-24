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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  TOUCHPAD_FILTER_TOUCH_PERIOD ; 
 int /*<<< orphan*/  TOUCH_FSM_MODE_TIMER ; 
 int /*<<< orphan*/  TOUCH_HVOLT_2V7 ; 
 int /*<<< orphan*/  TOUCH_HVOLT_ATTEN_1V ; 
 int /*<<< orphan*/  TOUCH_LVOLT_0V5 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tp_example_read_task ; 
 int /*<<< orphan*/  tp_example_rtc_intr ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

void FUNC9(void)
{
    // Initialize touch pad peripheral, it will start a timer to run a filter
    FUNC0(TAG, "Initializing touch pad");
    FUNC2();
    // If use interrupt trigger mode, should set touch sensor FSM mode at 'TOUCH_FSM_MODE_TIMER'.
    FUNC4(TOUCH_FSM_MODE_TIMER);
    // Set reference voltage for charging/discharging
    // For most usage scenarios, we recommend using the following combination:
    // the high reference valtage will be 2.7V - 1V = 1.7V, The low reference voltage will be 0.5V.
    FUNC5(TOUCH_HVOLT_2V7, TOUCH_LVOLT_0V5, TOUCH_HVOLT_ATTEN_1V);
    // Init touch pad IO
    FUNC7();
    // Initialize and start a software filter to detect slight change of capacitance.
    FUNC1(TOUCHPAD_FILTER_TOUCH_PERIOD);
    // Set thresh hold
    FUNC6();
    // Register touch interrupt ISR
    FUNC3(tp_example_rtc_intr, NULL);
    // Start a task to show what pads have been touched
    FUNC8(&tp_example_read_task, "touch_pad_read_task", 2048, NULL, 5, NULL);
}