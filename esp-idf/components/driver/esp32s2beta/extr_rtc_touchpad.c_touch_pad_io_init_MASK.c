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
typedef  scalar_t__ touch_pad_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  RTC_GPIO_MODE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ TOUCH_DENOISE_CHANNEL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

esp_err_t FUNC5(touch_pad_t touch_num)
{
    FUNC0(touch_num != TOUCH_DENOISE_CHANNEL,
                    "please use `touch_pad_denoise_enable` to set denoise channel", ESP_ERR_INVALID_ARG);
    FUNC1(touch_num);
    FUNC4(touch_num, RTC_GPIO_MODE_DISABLED);
    FUNC2(touch_num);
    FUNC3(touch_num);
    return ESP_OK;
}