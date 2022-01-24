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
typedef  int uint32_t ;
typedef  int rtc_xtal_freq_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RTC_DISABLE_ROM_LOG ; 
 int /*<<< orphan*/  RTC_XTAL_FREQ_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(rtc_xtal_freq_t xtal_freq)
{
    uint32_t reg = FUNC0(RTC_XTAL_FREQ_REG) & RTC_DISABLE_ROM_LOG;
    if (reg == RTC_DISABLE_ROM_LOG) {
        xtal_freq |= 1;
    }
    FUNC1(RTC_XTAL_FREQ_REG, FUNC2(xtal_freq));
}