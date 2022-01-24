#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  shield_driver; int /*<<< orphan*/  guard_ring_pad; } ;
typedef  TYPE_1__ touch_pad_waterproof_t ;
struct TYPE_6__ {int /*<<< orphan*/  cap_level; int /*<<< orphan*/  grade; } ;
typedef  TYPE_2__ touch_pad_denoise_t ;
typedef  int /*<<< orphan*/  touch_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int TOUCH_BUTTON_NUM ; 
 int /*<<< orphan*/  TOUCH_FSM_MODE_TIMER ; 
 int /*<<< orphan*/  TOUCH_PAD_DENOISE_BIT4 ; 
 int /*<<< orphan*/  TOUCH_PAD_DENOISE_CAP_L7 ; 
 int /*<<< orphan*/  TOUCH_PAD_FILTER_IIR_8 ; 
 int TOUCH_PAD_INTR_MASK_ACTIVE ; 
 int /*<<< orphan*/  TOUCH_PAD_INTR_MASK_ALL ; 
 int TOUCH_PAD_INTR_MASK_INACTIVE ; 
 int /*<<< orphan*/  TOUCH_PAD_SHIELD_DRV_L0 ; 
 int /*<<< orphan*/  TOUCH_PAD_THRESHOLD_MAX ; 
 int /*<<< orphan*/ * button ; 
 int /*<<< orphan*/ * que_touch ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  touchsensor_interrupt_cb ; 
 int /*<<< orphan*/  tp_example_read_task ; 
 int /*<<< orphan*/ * FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

void FUNC15(void)
{
    if (que_touch == NULL) {
        que_touch = FUNC13(TOUCH_BUTTON_NUM, sizeof(touch_event_t));
    }
    // Initialize touch pad peripheral, it will start a timer to run a filter
    FUNC0(TAG, "Initializing touch pad");
    /* Initialize touch pad peripheral. */
    FUNC5();
    for (int i = 0; i < TOUCH_BUTTON_NUM; i++) {
        FUNC1(button[i]);
        FUNC9(button[i], TOUCH_PAD_THRESHOLD_MAX);
    }

#if TOUCH_BUTTON_DENOISE_ENABLE
    /* Denoise setting at TouchSensor 0. */
    touch_pad_denoise_t denoise = {
        /* The bits to be cancelled are determined according to the noise level. */
        .grade = TOUCH_PAD_DENOISE_BIT4,
        .cap_level = TOUCH_PAD_DENOISE_CAP_L7,
    };
    touch_pad_denoise_set_config(denoise);
    touch_pad_denoise_enable();
    ESP_LOGI(TAG, "Denoise function init");
#endif

#if TOUCH_BUTTON_WATERPROOF_ENABLE
    /* Waterproof function */
    touch_pad_waterproof_t waterproof = {
        .guard_ring_pad = button[3],   // If no ring pad, set 0;
        /* It depends on the number of the parasitic capacitance of the shield pad. */
        .shield_driver = TOUCH_PAD_SHIELD_DRV_L0,   //40pf
    };
    touch_pad_waterproof_set_config(waterproof);
    touch_pad_waterproof_enable();
    ESP_LOGI(TAG, "touch pad waterproof init");
#endif

    /* Filter setting */
    FUNC12(TOUCH_PAD_FILTER_IIR_8);
    /* Register touch interrupt ISR, enable intr type. */
    FUNC7(touchsensor_interrupt_cb, NULL, TOUCH_PAD_INTR_MASK_ALL);
    FUNC6(TOUCH_PAD_INTR_MASK_ACTIVE | TOUCH_PAD_INTR_MASK_INACTIVE);
    // touch_pad_intr_enable(TOUCH_PAD_INTR_MASK_DONE); // Use for debug

    /* Enable touch sensor clock. Work mode is "timer trigger". */
    FUNC8(TOUCH_FSM_MODE_TIMER);
    FUNC4();

    // Start a task to show what pads have been touched
    FUNC14(&tp_example_read_task, "touch_pad_read_task", 2048, NULL, 5, NULL);
}