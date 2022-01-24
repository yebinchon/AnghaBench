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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  rtc_sleep_pd_config_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  RTC_CNTL_INT_CLR_REG ; 
 int /*<<< orphan*/  RTC_CNTL_INT_RAW_REG ; 
 int RTC_CNTL_SLEEP_EN ; 
 int /*<<< orphan*/  RTC_CNTL_SLEEP_REJECT_ENA ; 
 int /*<<< orphan*/  RTC_CNTL_SLP_REJECT_CONF_REG ; 
 int RTC_CNTL_SLP_REJECT_INT_CLR ; 
 int RTC_CNTL_SLP_REJECT_INT_RAW ; 
 int RTC_CNTL_SLP_WAKEUP_INT_CLR ; 
 int RTC_CNTL_SLP_WAKEUP_INT_RAW ; 
 int /*<<< orphan*/  RTC_CNTL_STATE0_REG ; 
 int /*<<< orphan*/  RTC_CNTL_WAKEUP_ENA ; 
 int /*<<< orphan*/  RTC_CNTL_WAKEUP_STATE_REG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

uint32_t FUNC6(uint32_t wakeup_opt, uint32_t reject_opt, uint32_t lslp_mem_inf_fpu)
{
    FUNC2(RTC_CNTL_WAKEUP_STATE_REG, RTC_CNTL_WAKEUP_ENA, wakeup_opt);
    FUNC2(RTC_CNTL_SLP_REJECT_CONF_REG, RTC_CNTL_SLEEP_REJECT_ENA, reject_opt);

    /* Start entry into sleep mode */
    FUNC4(RTC_CNTL_STATE0_REG, RTC_CNTL_SLEEP_EN);

    while (FUNC0(RTC_CNTL_INT_RAW_REG,
            RTC_CNTL_SLP_REJECT_INT_RAW | RTC_CNTL_SLP_WAKEUP_INT_RAW) == 0) {
        ;
    }
    /* In deep sleep mode, we never get here */
    uint32_t reject = FUNC1(RTC_CNTL_INT_RAW_REG, RTC_CNTL_SLP_REJECT_INT_RAW);
    FUNC4(RTC_CNTL_INT_CLR_REG,
            RTC_CNTL_SLP_REJECT_INT_CLR | RTC_CNTL_SLP_WAKEUP_INT_CLR);

    /* restore config if it is a light sleep */
    if (lslp_mem_inf_fpu)
    {
        rtc_sleep_pd_config_t pd_cfg = FUNC3(0);
        FUNC5(pd_cfg);
    }
    /* move setting from init to sleep, so we don't need to have this any more
    * restore DBG_ATTEN to the default value
    REG_SET_FIELD(RTC_CNTL_BIAS_CONF_REG, RTC_CNTL_DBG_ATTEN, RTC_CNTL_DBG_ATTEN_DEFAULT);
    */
    return reject;
}