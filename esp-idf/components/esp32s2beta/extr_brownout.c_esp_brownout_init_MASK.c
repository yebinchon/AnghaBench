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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_BROWN_OUT_INT_ENA_M ; 
 int /*<<< orphan*/  RTC_CNTL_INT_ENA_REG ; 
 int /*<<< orphan*/  rtc_brownout_isr_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
// TODO: implement brownout threshold configuration for esp32s2beta - IDF-751

    FUNC0( FUNC2(rtc_brownout_isr_handler, NULL, RTC_CNTL_BROWN_OUT_INT_ENA_M) );

    FUNC1(RTC_CNTL_INT_ENA_REG, RTC_CNTL_BROWN_OUT_INT_ENA_M);
}