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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTC_IO_DEBUG_SEL0 ; 
 int /*<<< orphan*/  RTC_IO_PAD_DAC1_REG ; 
 int /*<<< orphan*/  RTC_IO_PDAC1_FUN_SEL ; 
 int /*<<< orphan*/  RTC_IO_PDAC1_MUX_SEL_M ; 
 int RTC_IO_PDAC1_RDE_M ; 
 int RTC_IO_PDAC1_RUE_M ; 
 int /*<<< orphan*/  RTC_IO_RTC_DEBUG_SEL_REG ; 
 int /*<<< orphan*/  SENS_DEBUG_BIT_SEL ; 
 int /*<<< orphan*/  SENS_SAR_DAC_CTRL1_REG ; 

__attribute__((used)) static void FUNC3(int sel)
{
    FUNC1(RTC_IO_PAD_DAC1_REG, RTC_IO_PDAC1_MUX_SEL_M);
    FUNC0(RTC_IO_PAD_DAC1_REG, RTC_IO_PDAC1_RDE_M | RTC_IO_PDAC1_RUE_M);
    FUNC2(RTC_IO_PAD_DAC1_REG, RTC_IO_PDAC1_FUN_SEL, 1);
    FUNC2(SENS_SAR_DAC_CTRL1_REG, SENS_DEBUG_BIT_SEL, 0);
    FUNC2(RTC_IO_RTC_DEBUG_SEL_REG, RTC_IO_DEBUG_SEL0, sel);
}