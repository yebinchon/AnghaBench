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
typedef  int /*<<< orphan*/  touch_pad_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 scalar_t__ ESP_SLEEP_WAKEUP_TOUCHPAD ; 
 int /*<<< orphan*/  TOUCH_PAD_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

touch_pad_t FUNC3(void)
{
    if (FUNC1() != ESP_SLEEP_WAKEUP_TOUCHPAD) {
        return TOUCH_PAD_MAX;
    }
    touch_pad_t pad_num;
    esp_err_t ret = FUNC2(&pad_num);
    FUNC0(ret == ESP_OK && "wakeup reason is RTC_TOUCH_TRIG_EN but SENS_TOUCH_MEAS_EN is zero");
    return pad_num;
}