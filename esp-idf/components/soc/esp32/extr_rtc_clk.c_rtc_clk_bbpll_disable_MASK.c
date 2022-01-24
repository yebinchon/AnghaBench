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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_ANA_CONF_REG ; 
 int RTC_CNTL_BBPLL_FORCE_PD ; 
 int RTC_CNTL_BBPLL_I2C_FORCE_PD ; 
 int RTC_CNTL_BB_I2C_FORCE_PD ; 
 int RTC_CNTL_BIAS_I2C_FORCE_PD ; 
 int /*<<< orphan*/  RTC_CNTL_OPTIONS0_REG ; 
 int /*<<< orphan*/  RTC_CNTL_PLLA_FORCE_PD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ s_cur_pll_freq ; 

__attribute__((used)) static void FUNC2(void)
{
    FUNC1(RTC_CNTL_OPTIONS0_REG,
            RTC_CNTL_BB_I2C_FORCE_PD | RTC_CNTL_BBPLL_FORCE_PD |
            RTC_CNTL_BBPLL_I2C_FORCE_PD);
    s_cur_pll_freq = 0;

    /* is APLL under force power down? */
    uint32_t apll_fpd = FUNC0(RTC_CNTL_ANA_CONF_REG, RTC_CNTL_PLLA_FORCE_PD);
    if (apll_fpd) {
        /* then also power down the internal I2C bus */
        FUNC1(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_BIAS_I2C_FORCE_PD);
    }
}