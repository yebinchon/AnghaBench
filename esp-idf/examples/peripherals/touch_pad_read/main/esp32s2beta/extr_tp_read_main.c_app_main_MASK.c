#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cap_level; int /*<<< orphan*/  grade; } ;
typedef  TYPE_1__ touch_pad_denoise_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int TOUCH_BUTTON_NUM ; 
 int /*<<< orphan*/  TOUCH_FSM_MODE_TIMER ; 
 int /*<<< orphan*/  TOUCH_PAD_DENOISE_BIT4 ; 
 int /*<<< orphan*/  TOUCH_PAD_DENOISE_CAP_L7 ; 
 int /*<<< orphan*/  TOUCH_PAD_THRESHOLD_MAX ; 
 int /*<<< orphan*/ * button ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tp_example_read_task ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

void FUNC9(void)
{
    /* Initialize touch pad peripheral. */
    FUNC5();
    for (int i = 0; i < TOUCH_BUTTON_NUM; i++) {
        FUNC1(button[i]);
        FUNC7(button[i], TOUCH_PAD_THRESHOLD_MAX);
    }

    /* Denoise setting at TouchSensor 0. */
    touch_pad_denoise_t denoise = {
            /* The bits to be cancelled are determined according to the noise level. */
            .grade = TOUCH_PAD_DENOISE_BIT4,    
            .cap_level = TOUCH_PAD_DENOISE_CAP_L7,
    };
    FUNC3(denoise);
    FUNC2();
    FUNC0(TAG, "Denoise function init");

    /* Enable touch sensor clock. Work mode is "timer trigger". */
    FUNC6(TOUCH_FSM_MODE_TIMER);
    FUNC4();
    
    /* Start task to read values by pads. */
    FUNC8(&tp_example_read_task, "touch_pad_read_task", 2048, NULL, 5, NULL);
}