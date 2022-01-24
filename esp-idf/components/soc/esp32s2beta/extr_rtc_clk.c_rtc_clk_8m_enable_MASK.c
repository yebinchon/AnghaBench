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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DELAY_8M_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTC_CNTL_CK8M_WAIT ; 
 int RTC_CNTL_CK8M_WAIT_DEFAULT ; 
 int /*<<< orphan*/  RTC_CNTL_CLK_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_ENB_CK8M ; 
 int /*<<< orphan*/  RTC_CNTL_ENB_CK8M_DIV ; 
 int /*<<< orphan*/  RTC_CNTL_TIMER1_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(bool clk_8m_en, bool d256_en)
{
    if (clk_8m_en) {
        FUNC0(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_ENB_CK8M);
        /* no need to wait once enabled by software */
        FUNC1(RTC_CNTL_TIMER1_REG, RTC_CNTL_CK8M_WAIT, 1);
        FUNC3(DELAY_8M_ENABLE);
    } else {
        FUNC2(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_ENB_CK8M);
        FUNC1(RTC_CNTL_TIMER1_REG, RTC_CNTL_CK8M_WAIT, RTC_CNTL_CK8M_WAIT_DEFAULT);
    }
    /* d256 should be independent configured with 8M
     * Maybe we can split this function into 8m and dmd256
     */
    if (d256_en) {
        FUNC0(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_ENB_CK8M_DIV);
    } else {
        FUNC2(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_ENB_CK8M_DIV);
    }
}