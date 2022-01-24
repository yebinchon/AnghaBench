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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RTC_IO_X32N_RDE ; 
 int RTC_IO_X32P_RUE ; 
 int /*<<< orphan*/  RTC_IO_XPD_XTAL_32K ; 
 int /*<<< orphan*/  RTC_IO_XTAL_32K_PAD_REG ; 
 int RTC_SLOW_CLK_FREQ_32K ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  XTAL_32K_BOOTSTRAP_DAC_VAL ; 
 int /*<<< orphan*/  XTAL_32K_BOOTSTRAP_DBIAS_VAL ; 
 int /*<<< orphan*/  XTAL_32K_BOOTSTRAP_DRES_VAL ; 
 int const XTAL_32K_BOOTSTRAP_TIME_US ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC4 (int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(uint32_t cycle)
{
    if (cycle){
        const uint32_t pin_32 = 32;
        const uint32_t pin_33 = 33;
        const uint32_t mask_32 = (1 << (pin_32 - 32));
        const uint32_t mask_33 = (1 << (pin_33 - 32));

        FUNC4(pin_32);
        FUNC4(pin_33);
        FUNC3(mask_32, mask_33, mask_32 | mask_33, 0);

        const uint32_t delay_us = (1000000 / RTC_SLOW_CLK_FREQ_32K / 2);
        while(cycle){
            FUNC3(mask_32, mask_33, mask_32 | mask_33, 0);
            FUNC2(delay_us);
            FUNC3(mask_33, mask_32, mask_32 | mask_33, 0);
            FUNC2(delay_us);
            cycle--;
        }
        FUNC3(0, 0, 0, mask_32 | mask_33); // disable pins
    }

    FUNC0(RTC_IO_XTAL_32K_PAD_REG, RTC_IO_XPD_XTAL_32K);
    FUNC1(RTC_IO_XTAL_32K_PAD_REG, RTC_IO_X32P_RUE | RTC_IO_X32N_RDE);
    FUNC2(XTAL_32K_BOOTSTRAP_TIME_US);

    FUNC5(XTAL_32K_BOOTSTRAP_DAC_VAL,
            XTAL_32K_BOOTSTRAP_DRES_VAL, XTAL_32K_BOOTSTRAP_DBIAS_VAL);
}