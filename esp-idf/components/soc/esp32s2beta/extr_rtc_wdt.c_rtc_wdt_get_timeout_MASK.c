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
typedef  int uint32_t ;
typedef  int rtc_wdt_stage_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 

esp_err_t FUNC3(rtc_wdt_stage_t stage, unsigned int* timeout_ms)
{
    if (stage > 3) {
        return ESP_ERR_INVALID_ARG;
    }
    uint32_t time_tick;
    time_tick = FUNC0(FUNC1(stage));
    *timeout_ms = time_tick * 1000 / FUNC2();

    return ESP_OK;
}