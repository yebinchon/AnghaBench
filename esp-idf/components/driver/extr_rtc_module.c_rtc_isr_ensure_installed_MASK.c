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
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  ETS_RTC_CORE_INTR_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_INT_CLR_REG ; 
 int /*<<< orphan*/  RTC_CNTL_INT_ENA_REG ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtc_isr ; 
 scalar_t__ s_rtc_isr_handle ; 
 int /*<<< orphan*/  s_rtc_isr_handler_list_lock ; 

__attribute__((used)) static esp_err_t FUNC4(void)
{
    esp_err_t err = ESP_OK;
    FUNC2(&s_rtc_isr_handler_list_lock);
    if (s_rtc_isr_handle) {
        goto out;
    }

    FUNC0(RTC_CNTL_INT_ENA_REG, 0);
    FUNC0(RTC_CNTL_INT_CLR_REG, UINT32_MAX);
    err = FUNC1(ETS_RTC_CORE_INTR_SOURCE, 0, &rtc_isr, NULL, &s_rtc_isr_handle);
    if (err != ESP_OK) {
        goto out;
    }

out:
    FUNC3(&s_rtc_isr_handler_list_lock);
    return err;
}