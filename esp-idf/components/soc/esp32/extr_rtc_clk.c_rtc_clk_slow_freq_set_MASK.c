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
typedef  scalar_t__ rtc_slow_freq_t ;

/* Variables and functions */
 int /*<<< orphan*/  DELAY_SLOW_CLK_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTC_CNTL_ANA_CLK_RTC_SEL ; 
 int /*<<< orphan*/  RTC_CNTL_CLK_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_XTAL32K_EN ; 
 scalar_t__ RTC_SLOW_FREQ_32K_XTAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(rtc_slow_freq_t slow_freq)
{
    FUNC0(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_ANA_CLK_RTC_SEL, slow_freq);

    FUNC0(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_DIG_XTAL32K_EN,
            (slow_freq == RTC_SLOW_FREQ_32K_XTAL) ? 1 : 0);

    FUNC1(DELAY_SLOW_CLK_SWITCH);
}