#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ rtc_dboost_fpd; scalar_t__ pwrctl_init; scalar_t__ clkctl_init; int /*<<< orphan*/  ck8m_wait; int /*<<< orphan*/  xtal_wait; int /*<<< orphan*/  pll_wait; } ;
typedef  TYPE_1__ rtc_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DPORT_APP_CACHE_CTRL1_REG ; 
 int /*<<< orphan*/  DPORT_APP_CACHE_TAG_FORCE_ON ; 
 int /*<<< orphan*/  DPORT_APP_CMMU_FORCE_ON ; 
 int /*<<< orphan*/  DPORT_APP_ROM_FO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPORT_PRO_CACHE_CTRL1_REG ; 
 int /*<<< orphan*/  DPORT_PRO_CACHE_TAG_FORCE_ON ; 
 int /*<<< orphan*/  DPORT_PRO_CMMU_FORCE_ON ; 
 int /*<<< orphan*/  DPORT_PRO_ROM_FO ; 
 int /*<<< orphan*/  DPORT_ROM_FO_CTRL_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPORT_SHARE_ROM_FO ; 
 int /*<<< orphan*/  DPORT_SHARE_ROM_FO_S ; 
 int /*<<< orphan*/  DPORT_SRAM_FO_0 ; 
 int /*<<< orphan*/  DPORT_SRAM_FO_1 ; 
 int /*<<< orphan*/  DPORT_SRAM_FO_CTRL_0_REG ; 
 int /*<<< orphan*/  DPORT_SRAM_FO_CTRL_1_REG ; 
 int /*<<< orphan*/  DPORT_TAG_FO_CTRL_REG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_ANA_CONF_REG ; 
 int RTC_CNTL_BBPLL_FORCE_PU ; 
 int RTC_CNTL_BBPLL_I2C_FORCE_PU ; 
 int /*<<< orphan*/  RTC_CNTL_BIAS_CONF_REG ; 
 int RTC_CNTL_BIAS_CORE_FOLW_8M ; 
 int RTC_CNTL_BIAS_CORE_FORCE_PU ; 
 int RTC_CNTL_BIAS_FORCE_NOSLEEP ; 
 int RTC_CNTL_BIAS_I2C_FOLW_8M ; 
 int RTC_CNTL_BIAS_I2C_FORCE_PU ; 
 int RTC_CNTL_BIAS_SLEEP_FOLW_8M ; 
 int RTC_CNTL_CK8M_FORCE_PU ; 
 int /*<<< orphan*/  RTC_CNTL_CK8M_WAIT ; 
 int /*<<< orphan*/  RTC_CNTL_CLK_CONF_REG ; 
 int RTC_CNTL_CPU_ROM_RAM_FORCE_NOISO ; 
 int RTC_CNTL_CPU_ROM_RAM_FORCE_PU ; 
 int /*<<< orphan*/  RTC_CNTL_DBG_ATTEN ; 
 int /*<<< orphan*/  RTC_CNTL_DBG_ATTEN_DEFAULT ; 
 int /*<<< orphan*/  RTC_CNTL_DBIAS_1V10 ; 
 int /*<<< orphan*/  RTC_CNTL_DBIAS_SLP ; 
 int /*<<< orphan*/  RTC_CNTL_DBIAS_WAK ; 
 int RTC_CNTL_DBOOST_FORCE_PD ; 
 int RTC_CNTL_DBOOST_FORCE_PU ; 
 int RTC_CNTL_DEC_HEARTBEAT_WIDTH ; 
 int RTC_CNTL_DG_PAD_FORCE_NOISO ; 
 int RTC_CNTL_DG_PAD_FORCE_UNHOLD ; 
 int RTC_CNTL_DG_WRAP_FORCE_NOISO ; 
 int RTC_CNTL_DG_WRAP_FORCE_PU ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_ISO_REG ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_PWC_REG ; 
 int RTC_CNTL_FORCE_NOISO ; 
 int RTC_CNTL_FORCE_PU ; 
 int RTC_CNTL_INC_HEARTBEAT_PERIOD ; 
 int RTC_CNTL_LSLP_MEM_FORCE_PU ; 
 int RTC_CNTL_MEM_FORCE_NOISO ; 
 int RTC_CNTL_MEM_FORCE_PU ; 
 int /*<<< orphan*/  RTC_CNTL_OPTIONS0_REG ; 
 int RTC_CNTL_PLLA_FORCE_PD ; 
 int RTC_CNTL_PLLA_FORCE_PU ; 
 int /*<<< orphan*/  RTC_CNTL_PLL_BUF_WAIT ; 
 int RTC_CNTL_PVTMON_PU ; 
 int RTC_CNTL_PWC_FORCE_PU ; 
 int /*<<< orphan*/  RTC_CNTL_PWC_REG ; 
 int /*<<< orphan*/  RTC_CNTL_REG ; 
 int /*<<< orphan*/  RTC_CNTL_TIMER1_REG ; 
 int RTC_CNTL_WIFI_FORCE_NOISO ; 
 int RTC_CNTL_WIFI_FORCE_PU ; 
 int /*<<< orphan*/  RTC_CNTL_XTL_BUF_WAIT ; 
 int RTC_CNTL_XTL_FORCE_PU ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void FUNC5(rtc_config_t cfg)
{
    FUNC0(RTC_CNTL_ANA_CONF_REG, RTC_CNTL_PVTMON_PU);

    FUNC3(RTC_CNTL_TIMER1_REG, RTC_CNTL_PLL_BUF_WAIT, cfg.pll_wait);
    FUNC3(RTC_CNTL_TIMER1_REG, RTC_CNTL_XTL_BUF_WAIT, cfg.xtal_wait);
    FUNC3(RTC_CNTL_TIMER1_REG, RTC_CNTL_CK8M_WAIT, cfg.ck8m_wait);

    FUNC3(RTC_CNTL_BIAS_CONF_REG, RTC_CNTL_DBG_ATTEN, RTC_CNTL_DBG_ATTEN_DEFAULT);
    FUNC4(RTC_CNTL_BIAS_CONF_REG,
            RTC_CNTL_DEC_HEARTBEAT_WIDTH | RTC_CNTL_INC_HEARTBEAT_PERIOD);

    /* Reset RTC bias to default value (needed if waking up from deep sleep) */
    FUNC3(RTC_CNTL_REG, RTC_CNTL_DBIAS_WAK, RTC_CNTL_DBIAS_1V10);
    FUNC3(RTC_CNTL_REG, RTC_CNTL_DBIAS_SLP, RTC_CNTL_DBIAS_1V10);

    if (cfg.clkctl_init) {
        //clear CMMU clock force on
        FUNC1(DPORT_PRO_CACHE_CTRL1_REG, DPORT_PRO_CMMU_FORCE_ON);
        FUNC1(DPORT_APP_CACHE_CTRL1_REG, DPORT_APP_CMMU_FORCE_ON);
        //clear rom clock force on
        FUNC2(DPORT_ROM_FO_CTRL_REG, DPORT_SHARE_ROM_FO, 0, DPORT_SHARE_ROM_FO_S);
        FUNC1(DPORT_ROM_FO_CTRL_REG, DPORT_APP_ROM_FO);
        FUNC1(DPORT_ROM_FO_CTRL_REG, DPORT_PRO_ROM_FO);
        //clear sram clock force on
        FUNC1(DPORT_SRAM_FO_CTRL_0_REG, DPORT_SRAM_FO_0);
        FUNC1(DPORT_SRAM_FO_CTRL_1_REG, DPORT_SRAM_FO_1);
        //clear tag clock force on
        FUNC1(DPORT_TAG_FO_CTRL_REG, DPORT_APP_CACHE_TAG_FORCE_ON);
        FUNC1(DPORT_TAG_FO_CTRL_REG, DPORT_PRO_CACHE_TAG_FORCE_ON);
    }

    if (cfg.pwrctl_init) {
        FUNC0(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_CK8M_FORCE_PU);
        //cancel xtal force pu
        FUNC0(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_XTL_FORCE_PU);
        //cancel BIAS force pu
        FUNC0(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_BIAS_CORE_FORCE_PU);
        FUNC0(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_BIAS_I2C_FORCE_PU);
        FUNC0(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_BIAS_FORCE_NOSLEEP);
        // bias follow 8M
        FUNC4(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_BIAS_CORE_FOLW_8M);
        FUNC4(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_BIAS_I2C_FOLW_8M);
        FUNC4(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_BIAS_SLEEP_FOLW_8M);
        // CLEAR APLL close
        FUNC0(RTC_CNTL_ANA_CONF_REG, RTC_CNTL_PLLA_FORCE_PU);
        FUNC4(RTC_CNTL_ANA_CONF_REG, RTC_CNTL_PLLA_FORCE_PD);
        FUNC0(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_BBPLL_FORCE_PU);
        FUNC0(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_BBPLL_I2C_FORCE_PU);
        //cancel RTC REG force PU
        FUNC0(RTC_CNTL_REG, RTC_CNTL_FORCE_PU);
        FUNC0(RTC_CNTL_REG, RTC_CNTL_DBOOST_FORCE_PU);
        if (cfg.rtc_dboost_fpd) {
            FUNC4(RTC_CNTL_REG, RTC_CNTL_DBOOST_FORCE_PD);
        } else {
            FUNC0(RTC_CNTL_REG, RTC_CNTL_DBOOST_FORCE_PD);
        }
        //cancel digital pu force
        FUNC0(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_LSLP_MEM_FORCE_PU);
        FUNC0(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_DG_WRAP_FORCE_PU);
        FUNC0(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_WIFI_FORCE_PU);
        FUNC0(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_CPU_ROM_RAM_FORCE_PU);
        FUNC0(RTC_CNTL_PWC_REG, RTC_CNTL_MEM_FORCE_PU);
        FUNC0(RTC_CNTL_PWC_REG, RTC_CNTL_PWC_FORCE_PU);
        FUNC0(RTC_CNTL_DIG_ISO_REG, RTC_CNTL_DG_WRAP_FORCE_NOISO);
        FUNC0(RTC_CNTL_DIG_ISO_REG, RTC_CNTL_WIFI_FORCE_NOISO);
        FUNC0(RTC_CNTL_DIG_ISO_REG, RTC_CNTL_CPU_ROM_RAM_FORCE_NOISO);
        FUNC0(RTC_CNTL_PWC_REG, RTC_CNTL_MEM_FORCE_NOISO);
        FUNC0(RTC_CNTL_PWC_REG, RTC_CNTL_FORCE_NOISO);
        //cancel digital PADS force no iso
        FUNC0(RTC_CNTL_DIG_ISO_REG, RTC_CNTL_DG_PAD_FORCE_UNHOLD);
        FUNC0(RTC_CNTL_DIG_ISO_REG, RTC_CNTL_DG_PAD_FORCE_NOISO);
    }
}