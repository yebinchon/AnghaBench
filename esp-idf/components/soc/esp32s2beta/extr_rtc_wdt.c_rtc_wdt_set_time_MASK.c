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
typedef  unsigned int uint64_t ;
typedef  int uint32_t ;
typedef  int rtc_wdt_stage_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_RD_REPEAT_DATA1_REG ; 
 int /*<<< orphan*/  EFUSE_WDT_DELAY_SEL ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RTC_WDT_STAGE0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 

esp_err_t FUNC4(rtc_wdt_stage_t stage, unsigned int timeout_ms)
{
    if (stage > 3) {
        return ESP_ERR_INVALID_ARG;
    }
    uint32_t timeout = (uint32_t) ((uint64_t) FUNC3() * timeout_ms / 1000);
    if (stage == RTC_WDT_STAGE0) {
        timeout = timeout >> (1 + FUNC0(EFUSE_RD_REPEAT_DATA1_REG, EFUSE_WDT_DELAY_SEL));
    }
    FUNC1(FUNC2(stage), timeout);
    return ESP_OK;
}