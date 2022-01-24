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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_ANA_CLK_DIV ; 
 int /*<<< orphan*/  RTC_CNTL_ANA_CLK_DIV_VLD ; 
 int /*<<< orphan*/  RTC_CNTL_SLOW_CLK_CONF_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(uint32_t div)
{
    FUNC0(RTC_CNTL_SLOW_CLK_CONF_REG, RTC_CNTL_ANA_CLK_DIV_VLD);
    FUNC1(RTC_CNTL_SLOW_CLK_CONF_REG, RTC_CNTL_ANA_CLK_DIV, div);
    FUNC2(RTC_CNTL_SLOW_CLK_CONF_REG, RTC_CNTL_ANA_CLK_DIV_VLD);
}