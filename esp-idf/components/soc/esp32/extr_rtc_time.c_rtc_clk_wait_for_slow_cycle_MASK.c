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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CAL_RTC_MUX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMG_RTC_CALI_CLK_SEL ; 
 int /*<<< orphan*/  TIMG_RTC_CALI_MAX ; 
 int TIMG_RTC_CALI_RDY ; 
 int TIMG_RTC_CALI_START ; 
 int TIMG_RTC_CALI_START_CYCLING ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(void)
{
    FUNC1(FUNC4(0), TIMG_RTC_CALI_START_CYCLING | TIMG_RTC_CALI_START);
    FUNC1(FUNC4(0), TIMG_RTC_CALI_RDY);
    FUNC3(FUNC4(0), TIMG_RTC_CALI_CLK_SEL, RTC_CAL_RTC_MUX);
    /* Request to run calibration for 0 slow clock cycles.
     * RDY bit will be set on the nearest slow clock cycle.
     */
    FUNC3(FUNC4(0), TIMG_RTC_CALI_MAX, 0);
    FUNC2(FUNC4(0), TIMG_RTC_CALI_START);
    FUNC5(1); /* RDY needs some time to go low */
    while (!FUNC0(FUNC4(0), TIMG_RTC_CALI_RDY)) {
        FUNC5(1);
    }
}