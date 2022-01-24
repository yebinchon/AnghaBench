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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int rtc_wdt_stage_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  RTC_CNTL_WDTCONFIG1_REG ; 
 int /*<<< orphan*/  RTC_CNTL_WDTCONFIG2_REG ; 
 int /*<<< orphan*/  RTC_CNTL_WDTCONFIG3_REG ; 
 int /*<<< orphan*/  RTC_CNTL_WDTCONFIG4_REG ; 
 int RTC_WDT_STAGE0 ; 
 int RTC_WDT_STAGE1 ; 
 int RTC_WDT_STAGE2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 

esp_err_t FUNC2(rtc_wdt_stage_t stage, unsigned int timeout_ms)
{
    if (stage > 3) {
        return ESP_ERR_INVALID_ARG;
    }
    uint32_t timeout = (uint32_t) ((uint64_t) FUNC1() * timeout_ms / 1000);
    if (stage == RTC_WDT_STAGE0) {
        FUNC0(RTC_CNTL_WDTCONFIG1_REG, timeout);
    } else if (stage == RTC_WDT_STAGE1) {
        FUNC0(RTC_CNTL_WDTCONFIG2_REG, timeout);
    } else if (stage == RTC_WDT_STAGE2) {
        FUNC0(RTC_CNTL_WDTCONFIG3_REG, timeout);
    } else {
        FUNC0(RTC_CNTL_WDTCONFIG4_REG, timeout);
    }

    return ESP_OK;
}