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
 int /*<<< orphan*/  DIG_DBIAS_XTAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_CLK_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_DBIAS_WAK ; 
 int /*<<< orphan*/  RTC_CNTL_REG ; 
 int /*<<< orphan*/  RTC_CNTL_SOC_CLK_SEL ; 
 int /*<<< orphan*/  RTC_CNTL_SOC_CLK_SEL_8M ; 
 int /*<<< orphan*/  RTC_FAST_CLK_FREQ_8M ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
    FUNC1(8);
    FUNC0(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_XTAL);
    FUNC0(APB_CTRL_SYSCLK_CONF_REG, APB_CTRL_PRE_DIV_CNT, 0);
    FUNC0(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_SOC_CLK_SEL, RTC_CNTL_SOC_CLK_SEL_8M);
    FUNC2(RTC_FAST_CLK_FREQ_8M);
}