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
 int /*<<< orphan*/  APB_CTRL_PRE_DIV_CNT ; 
 int /*<<< orphan*/  APB_CTRL_SYSCLK_CONF_REG ; 
 int /*<<< orphan*/  APB_CTRL_XTAL_TICK_CONF_REG ; 
 int DIG_DBIAS_2M ; 
 int DIG_DBIAS_XTAL ; 
 int MHZ ; 
 int REF_CLK_FREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTC_CNTL_CLK_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_DBIAS_WAK ; 
 int /*<<< orphan*/  RTC_CNTL_REG ; 
 int /*<<< orphan*/  RTC_CNTL_SOC_CLK_SEL ; 
 int RTC_CNTL_SOC_CLK_SEL_XTL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(int freq, int div)
{
    FUNC2(freq);
    /* set divider from XTAL to APB clock */
    FUNC0(APB_CTRL_SYSCLK_CONF_REG, APB_CTRL_PRE_DIV_CNT, div - 1);
    /* adjust ref_tick */
    FUNC1(APB_CTRL_XTAL_TICK_CONF_REG, freq * MHZ / REF_CLK_FREQ - 1);
    /* switch clock source */
    FUNC0(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_SOC_CLK_SEL, RTC_CNTL_SOC_CLK_SEL_XTL);
    FUNC3(freq * MHZ);
    /* lower the voltage */
    if (freq <= 2) {
        FUNC0(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_2M);
    } else {
        FUNC0(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_XTAL);
    }
}