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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_SLOW_CLK_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_SLOW_CLK_NEXT_EDGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(void) //This function may not by useful any more
{
    FUNC1(RTC_CNTL_SLOW_CLK_CONF_REG, RTC_CNTL_SLOW_CLK_NEXT_EDGE);
    while (FUNC0(RTC_CNTL_SLOW_CLK_CONF_REG, RTC_CNTL_SLOW_CLK_NEXT_EDGE)) {
        FUNC2(1);
    }
}