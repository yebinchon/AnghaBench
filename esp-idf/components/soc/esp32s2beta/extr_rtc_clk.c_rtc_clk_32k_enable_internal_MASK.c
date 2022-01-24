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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTC_CNTL_DAC_XTAL_32K ; 
 int /*<<< orphan*/  RTC_CNTL_DGM_XTAL_32K ; 
 int /*<<< orphan*/  RTC_CNTL_DRES_XTAL_32K ; 
 int /*<<< orphan*/  RTC_CNTL_EXT_XTL_CONF_REG ; 
 int RTC_CNTL_XTAL32K_XPD_FORCE ; 
 int RTC_IO_X32N_FUN_IE ; 
 int /*<<< orphan*/  RTC_IO_X32N_MUX_SEL ; 
 int RTC_IO_X32N_RDE ; 
 int RTC_IO_X32N_RUE ; 
 int RTC_IO_X32P_FUN_IE ; 
 int /*<<< orphan*/  RTC_IO_X32P_MUX_SEL ; 
 int RTC_IO_X32P_RDE ; 
 int RTC_IO_X32P_RUE ; 
 int /*<<< orphan*/  RTC_IO_XTAL_32N_PAD_REG ; 
 int /*<<< orphan*/  RTC_IO_XTAL_32P_PAD_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(int dac, int dres, int dgm)
{
    FUNC2(RTC_IO_XTAL_32P_PAD_REG, RTC_IO_X32P_MUX_SEL);
    FUNC2(RTC_IO_XTAL_32N_PAD_REG, RTC_IO_X32N_MUX_SEL);
    FUNC0(RTC_IO_XTAL_32P_PAD_REG, RTC_IO_X32P_RUE | RTC_IO_X32P_FUN_IE | RTC_IO_X32P_RDE);
    FUNC0(RTC_IO_XTAL_32N_PAD_REG, RTC_IO_X32N_RUE | RTC_IO_X32N_FUN_IE | RTC_IO_X32N_RDE);
    FUNC1(RTC_CNTL_EXT_XTL_CONF_REG, RTC_CNTL_DAC_XTAL_32K, dac);
    FUNC1(RTC_CNTL_EXT_XTL_CONF_REG, RTC_CNTL_DRES_XTAL_32K, dres);
    FUNC1(RTC_CNTL_EXT_XTL_CONF_REG, RTC_CNTL_DGM_XTAL_32K, dgm);

    /* Differential buffer option. May need to change */
    // CLEAR_PERI_REG_MASK(RTC_CNTL_EXT_XTL_CONF_REG, RTC_CNTL_DBUF_XTAL_32K);

    /* Clear xpd force to use xtal32k watch dog to control xtal pxd. default on */
    FUNC0(RTC_CNTL_EXT_XTL_CONF_REG, RTC_CNTL_XTAL32K_XPD_FORCE);
}