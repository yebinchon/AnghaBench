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
typedef  int /*<<< orphan*/  rtc_sleep_pd_config_t ;
struct TYPE_3__ {int /*<<< orphan*/  dig_dbias_slp; int /*<<< orphan*/  dig_dbias_wak; int /*<<< orphan*/  rtc_dbias_wak; int /*<<< orphan*/  rtc_dbias_slp; int /*<<< orphan*/  vddsdio_pd_en; int /*<<< orphan*/  xtal_fpu; scalar_t__ deep_slp; scalar_t__ rom_mem_pd_en; scalar_t__ wifi_pd_en; scalar_t__ rtc_peri_pd_en; scalar_t__ rtc_slowmem_pd_en; scalar_t__ rtc_fastmem_pd_en; scalar_t__ rtc_mem_inf_follow_cpu; scalar_t__ rtc_mem_inf_fpu; int /*<<< orphan*/  lslp_meminf_pd; int /*<<< orphan*/  lslp_mem_inf_fpu; } ;
typedef  TYPE_1__ rtc_sleep_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DG_WRAP_POWERUP_CYCLES ; 
 int /*<<< orphan*/  DG_WRAP_WAIT_CYCLES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ROM_RAM_POWERUP_CYCLES ; 
 int /*<<< orphan*/  ROM_RAM_WAIT_CYCLES ; 
 int /*<<< orphan*/  RTC_CNTL_ANA_CLK_RTC_SEL ; 
 int /*<<< orphan*/  RTC_CNTL_ANA_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_BIAS_CONF_REG ; 
 int RTC_CNTL_BIAS_FORCE_NOSLEEP ; 
 int /*<<< orphan*/  RTC_CNTL_CK8M_FORCE_PU ; 
 int /*<<< orphan*/  RTC_CNTL_CK8M_WAIT ; 
 int /*<<< orphan*/  RTC_CNTL_CK8M_WAIT_SLP ; 
 int RTC_CNTL_CKGEN_I2C_PU ; 
 int /*<<< orphan*/  RTC_CNTL_CLK_CONF_REG ; 
 int RTC_CNTL_CPU_ROM_RAM_PD_EN ; 
 int /*<<< orphan*/  RTC_CNTL_DBG_ATTEN ; 
 int /*<<< orphan*/  RTC_CNTL_DBIAS_SLP ; 
 int /*<<< orphan*/  RTC_CNTL_DBIAS_WAK ; 
 int RTC_CNTL_DG_PAD_FORCE_ISO ; 
 int RTC_CNTL_DG_PAD_FORCE_NOISO ; 
 int RTC_CNTL_DG_WRAP_FORCE_PD ; 
 int RTC_CNTL_DG_WRAP_FORCE_PU ; 
 int RTC_CNTL_DG_WRAP_PD_EN ; 
 int /*<<< orphan*/  RTC_CNTL_DG_WRAP_POWERUP_TIMER ; 
 int /*<<< orphan*/  RTC_CNTL_DG_WRAP_WAIT_TIMER ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_DBIAS_SLP ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_DBIAS_WAK ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_ISO_REG ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_PWC_REG ; 
 int RTC_CNTL_FASTMEM_FORCE_NOISO ; 
 int RTC_CNTL_FASTMEM_FORCE_PU ; 
 int RTC_CNTL_FASTMEM_PD_EN ; 
 int /*<<< orphan*/  RTC_CNTL_LSLP_MEM_FORCE_PU ; 
 int RTC_CNTL_MEM_FOLW_CPU ; 
 int RTC_CNTL_MEM_FORCE_PU ; 
 int /*<<< orphan*/  RTC_CNTL_MIN_SLP_VAL ; 
 int /*<<< orphan*/  RTC_CNTL_MIN_SLP_VAL_MIN ; 
 int /*<<< orphan*/  RTC_CNTL_OPTIONS0_REG ; 
 int RTC_CNTL_PD_EN ; 
 int /*<<< orphan*/  RTC_CNTL_PLL_BUF_WAIT ; 
 int /*<<< orphan*/  RTC_CNTL_PLL_BUF_WAIT_SLP ; 
 int RTC_CNTL_PLL_I2C_PU ; 
 int /*<<< orphan*/  RTC_CNTL_POWERUP_TIMER ; 
 int /*<<< orphan*/  RTC_CNTL_PWC_REG ; 
 int /*<<< orphan*/  RTC_CNTL_REG ; 
 int RTC_CNTL_RFRX_PBUS_PU ; 
 int /*<<< orphan*/  RTC_CNTL_ROM_RAM_POWERUP_TIMER ; 
 int /*<<< orphan*/  RTC_CNTL_ROM_RAM_WAIT_TIMER ; 
 int /*<<< orphan*/  RTC_CNTL_RTCMEM_POWERUP_TIMER ; 
 int /*<<< orphan*/  RTC_CNTL_RTCMEM_WAIT_TIMER ; 
 int /*<<< orphan*/  RTC_CNTL_SDIO_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_SDIO_FORCE ; 
 int /*<<< orphan*/  RTC_CNTL_SDIO_PD_EN ; 
 int RTC_CNTL_SLOWMEM_FORCE_NOISO ; 
 int RTC_CNTL_SLOWMEM_FORCE_PU ; 
 int RTC_CNTL_SLOWMEM_PD_EN ; 
 int /*<<< orphan*/  RTC_CNTL_TIMER1_REG ; 
 int /*<<< orphan*/  RTC_CNTL_TIMER3_REG ; 
 int /*<<< orphan*/  RTC_CNTL_TIMER4_REG ; 
 int /*<<< orphan*/  RTC_CNTL_TIMER5_REG ; 
 int RTC_CNTL_TXRF_I2C_PU ; 
 int /*<<< orphan*/  RTC_CNTL_WAIT_TIMER ; 
 int RTC_CNTL_WIFI_PD_EN ; 
 int /*<<< orphan*/  RTC_CNTL_WIFI_POWERUP_TIMER ; 
 int /*<<< orphan*/  RTC_CNTL_WIFI_WAIT_TIMER ; 
 int /*<<< orphan*/  RTC_CNTL_XTL_BUF_WAIT ; 
 int /*<<< orphan*/  RTC_CNTL_XTL_BUF_WAIT_SLP ; 
 int /*<<< orphan*/  RTC_CNTL_XTL_FORCE_PU ; 
 int /*<<< orphan*/  RTC_MEM_POWERUP_CYCLES ; 
 int /*<<< orphan*/  RTC_MEM_WAIT_CYCLES ; 
 int /*<<< orphan*/  RTC_POWERUP_CYCLES ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ RTC_SLOW_FREQ_8MD256 ; 
 int /*<<< orphan*/  RTC_WAIT_CYCLES ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WIFI_POWERUP_CYCLES ; 
 int /*<<< orphan*/  WIFI_WAIT_CYCLES ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(rtc_sleep_config_t cfg)
{
    // set 5 PWC state machine times to fit in main state machine time
    FUNC4(RTC_CNTL_TIMER1_REG, RTC_CNTL_PLL_BUF_WAIT, RTC_CNTL_PLL_BUF_WAIT_SLP);
    FUNC4(RTC_CNTL_TIMER1_REG, RTC_CNTL_XTL_BUF_WAIT, RTC_CNTL_XTL_BUF_WAIT_SLP);
    FUNC4(RTC_CNTL_TIMER1_REG, RTC_CNTL_CK8M_WAIT, RTC_CNTL_CK8M_WAIT_SLP);

    // set shortest possible sleep time limit
    FUNC4(RTC_CNTL_TIMER5_REG, RTC_CNTL_MIN_SLP_VAL, RTC_CNTL_MIN_SLP_VAL_MIN);

    // set rom&ram timer
    FUNC4(RTC_CNTL_TIMER3_REG, RTC_CNTL_ROM_RAM_POWERUP_TIMER, ROM_RAM_POWERUP_CYCLES);
    FUNC4(RTC_CNTL_TIMER3_REG, RTC_CNTL_ROM_RAM_WAIT_TIMER, ROM_RAM_WAIT_CYCLES);
    // set wifi timer
    FUNC4(RTC_CNTL_TIMER3_REG, RTC_CNTL_WIFI_POWERUP_TIMER, WIFI_POWERUP_CYCLES);
    FUNC4(RTC_CNTL_TIMER3_REG, RTC_CNTL_WIFI_WAIT_TIMER, WIFI_WAIT_CYCLES);
    // set rtc peri timer
    FUNC4(RTC_CNTL_TIMER4_REG, RTC_CNTL_POWERUP_TIMER, RTC_POWERUP_CYCLES);
    FUNC4(RTC_CNTL_TIMER4_REG, RTC_CNTL_WAIT_TIMER, RTC_WAIT_CYCLES);
    // set digital wrap timer
    FUNC4(RTC_CNTL_TIMER4_REG, RTC_CNTL_DG_WRAP_POWERUP_TIMER, DG_WRAP_POWERUP_CYCLES);
    FUNC4(RTC_CNTL_TIMER4_REG, RTC_CNTL_DG_WRAP_WAIT_TIMER, DG_WRAP_WAIT_CYCLES);
    // set rtc memory timer
    FUNC4(RTC_CNTL_TIMER5_REG, RTC_CNTL_RTCMEM_POWERUP_TIMER, RTC_MEM_POWERUP_CYCLES);
    FUNC4(RTC_CNTL_TIMER5_REG, RTC_CNTL_RTCMEM_WAIT_TIMER, RTC_MEM_WAIT_CYCLES);

    FUNC4(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_LSLP_MEM_FORCE_PU, cfg.lslp_mem_inf_fpu);

    rtc_sleep_pd_config_t pd_cfg = FUNC5(cfg.lslp_meminf_pd);
    FUNC7(pd_cfg);

    if (cfg.rtc_mem_inf_fpu) {
        FUNC6(RTC_CNTL_PWC_REG, RTC_CNTL_MEM_FORCE_PU);
    } else {
        FUNC0(RTC_CNTL_PWC_REG, RTC_CNTL_MEM_FORCE_PU);
    }

    if (cfg.rtc_mem_inf_follow_cpu) {
        FUNC6(RTC_CNTL_PWC_REG, RTC_CNTL_MEM_FOLW_CPU);
    } else {
        FUNC0(RTC_CNTL_PWC_REG, RTC_CNTL_MEM_FOLW_CPU);
    }

    if (cfg.rtc_fastmem_pd_en) {
        FUNC6(RTC_CNTL_PWC_REG, RTC_CNTL_FASTMEM_PD_EN);
        FUNC0(RTC_CNTL_PWC_REG, RTC_CNTL_FASTMEM_FORCE_PU);
        FUNC0(RTC_CNTL_PWC_REG, RTC_CNTL_FASTMEM_FORCE_NOISO);
    } else {
        FUNC0(RTC_CNTL_PWC_REG, RTC_CNTL_FASTMEM_PD_EN);
        FUNC6(RTC_CNTL_PWC_REG, RTC_CNTL_FASTMEM_FORCE_PU);
        FUNC6(RTC_CNTL_PWC_REG, RTC_CNTL_FASTMEM_FORCE_NOISO);
    }

    if (cfg.rtc_slowmem_pd_en) {
        FUNC6(RTC_CNTL_PWC_REG, RTC_CNTL_SLOWMEM_PD_EN);
        FUNC0(RTC_CNTL_PWC_REG, RTC_CNTL_SLOWMEM_FORCE_PU);
        FUNC0(RTC_CNTL_PWC_REG, RTC_CNTL_SLOWMEM_FORCE_NOISO);
    } else {
        FUNC0(RTC_CNTL_PWC_REG, RTC_CNTL_SLOWMEM_PD_EN);
        FUNC6(RTC_CNTL_PWC_REG, RTC_CNTL_SLOWMEM_FORCE_PU);
        FUNC6(RTC_CNTL_PWC_REG, RTC_CNTL_SLOWMEM_FORCE_NOISO);
    }

    if (cfg.rtc_peri_pd_en) {
        FUNC6(RTC_CNTL_PWC_REG, RTC_CNTL_PD_EN);
    } else {
        FUNC0(RTC_CNTL_PWC_REG, RTC_CNTL_PD_EN);
    }

    if (cfg.wifi_pd_en) {
        FUNC6(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_WIFI_PD_EN);
    } else {
        FUNC0(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_WIFI_PD_EN);
    }

    if (cfg.rom_mem_pd_en) {
        FUNC6(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_CPU_ROM_RAM_PD_EN);
    } else {
        FUNC0(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_CPU_ROM_RAM_PD_EN);
    }

    if (cfg.deep_slp) {
        FUNC0(RTC_CNTL_DIG_ISO_REG,
                RTC_CNTL_DG_PAD_FORCE_ISO | RTC_CNTL_DG_PAD_FORCE_NOISO);
        FUNC6(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_DG_WRAP_PD_EN);
        FUNC0(RTC_CNTL_DIG_PWC_REG,
                RTC_CNTL_DG_WRAP_FORCE_PU | RTC_CNTL_DG_WRAP_FORCE_PD);
        FUNC0(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_BIAS_FORCE_NOSLEEP);

        // Shut down parts of RTC which may have been left enabled by the wireless drivers
        FUNC0(RTC_CNTL_ANA_CONF_REG,
                RTC_CNTL_CKGEN_I2C_PU | RTC_CNTL_PLL_I2C_PU |
                RTC_CNTL_RFRX_PBUS_PU | RTC_CNTL_TXRF_I2C_PU);
    } else {
        FUNC0(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_DG_WRAP_PD_EN);
        FUNC4(RTC_CNTL_BIAS_CONF_REG, RTC_CNTL_DBG_ATTEN, 0);
    }

    FUNC4(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_XTL_FORCE_PU, cfg.xtal_fpu);

    if (FUNC2(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_ANA_CLK_RTC_SEL) == RTC_SLOW_FREQ_8MD256) {
        FUNC3(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_CK8M_FORCE_PU);
    } else {
        FUNC1(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_CK8M_FORCE_PU);
    }

    /* enable VDDSDIO control by state machine */
    FUNC1(RTC_CNTL_SDIO_CONF_REG, RTC_CNTL_SDIO_FORCE);
    FUNC4(RTC_CNTL_SDIO_CONF_REG, RTC_CNTL_SDIO_PD_EN, cfg.vddsdio_pd_en);

    FUNC4(RTC_CNTL_REG, RTC_CNTL_DBIAS_SLP, cfg.rtc_dbias_slp);
    FUNC4(RTC_CNTL_REG, RTC_CNTL_DBIAS_WAK, cfg.rtc_dbias_wak);
    FUNC4(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, cfg.dig_dbias_wak);
    FUNC4(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_SLP, cfg.dig_dbias_slp);
}