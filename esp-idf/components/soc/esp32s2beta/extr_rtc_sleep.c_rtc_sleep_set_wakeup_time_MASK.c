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
 int /*<<< orphan*/  RTC_CNTL_SLP_TIMER0_REG ; 
 int /*<<< orphan*/  RTC_CNTL_SLP_TIMER1_REG ; 
 int UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1(uint64_t t)
{
    FUNC0(RTC_CNTL_SLP_TIMER0_REG, t & UINT32_MAX);
    FUNC0(RTC_CNTL_SLP_TIMER1_REG, t >> 32);
}