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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_EXT_XTL_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_XPD_XTAL_32K ; 
 int /*<<< orphan*/  RTC_CNTL_XTAL32K_XPD_FORCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XTAL_32K_DAC_VAL ; 
 int /*<<< orphan*/  XTAL_32K_DGM_VAL ; 
 int /*<<< orphan*/  XTAL_32K_DRES_VAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(bool enable)
{
    if (enable) {
        FUNC2(XTAL_32K_DAC_VAL, XTAL_32K_DRES_VAL, XTAL_32K_DGM_VAL);
    } else {
        FUNC0(RTC_CNTL_EXT_XTL_CONF_REG, RTC_CNTL_XPD_XTAL_32K);
        FUNC1(RTC_CNTL_EXT_XTL_CONF_REG, RTC_CNTL_XTAL32K_XPD_FORCE);
    }
}