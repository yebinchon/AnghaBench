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
typedef  int uint64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_TIME_HIGH0_REG ; 
 int /*<<< orphan*/  RTC_CNTL_TIME_HIGH1_REG ; 
 int /*<<< orphan*/  RTC_CNTL_TIME_LOW0_REG ; 
 int /*<<< orphan*/  RTC_CNTL_TIME_LOW1_REG ; 

uint64_t FUNC1(void)
{
    uint64_t t_wake = FUNC0(RTC_CNTL_TIME_LOW0_REG);
    t_wake |= ((uint64_t) FUNC0(RTC_CNTL_TIME_HIGH0_REG)) << 32;
    uint64_t t_slp = FUNC0(RTC_CNTL_TIME_LOW1_REG);
    t_slp |= ((uint64_t) FUNC0(RTC_CNTL_TIME_HIGH1_REG)) << 32;
    return (t_wake - t_slp);
}