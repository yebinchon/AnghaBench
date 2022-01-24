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
struct TYPE_3__ {int /*<<< orphan*/  fe_fpu; int /*<<< orphan*/  nrx_fpu; int /*<<< orphan*/  bb_fpu; int /*<<< orphan*/  i2s_fpu; int /*<<< orphan*/  rtc_fpu; int /*<<< orphan*/  dig_fpu; } ;
typedef  TYPE_1__ rtc_sleep_pd_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  APB_CTRL_AGC_MEM_FORCE_PU ; 
 int /*<<< orphan*/  APB_CTRL_DC_MEM_FORCE_PU ; 
 int /*<<< orphan*/  APB_CTRL_FRONT_END_MEM_PD_REG ; 
 int /*<<< orphan*/  APB_CTRL_PBUS_MEM_FORCE_PU ; 
 int /*<<< orphan*/  BBPD_CTRL ; 
 int /*<<< orphan*/  BB_DC_EST_FORCE_PU ; 
 int /*<<< orphan*/  BB_FFT_FORCE_PU ; 
 int /*<<< orphan*/  FE2_TX_INF_FORCE_PU ; 
 int /*<<< orphan*/  FE2_TX_INTERP_CTRL ; 
 int /*<<< orphan*/  FE_GEN_CTRL ; 
 int /*<<< orphan*/  FE_IQ_EST_FORCE_PU ; 
 int /*<<< orphan*/  I2S_FIFO_FORCE_PU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I2S_PLC_MEM_FORCE_PU ; 
 int /*<<< orphan*/  NRXPD_CTRL ; 
 int /*<<< orphan*/  NRX_DEMAP_FORCE_PU ; 
 int /*<<< orphan*/  NRX_RX_ROT_FORCE_PU ; 
 int /*<<< orphan*/  NRX_VIT_FORCE_PU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_PWC_REG ; 
 int /*<<< orphan*/  RTC_CNTL_FASTMEM_FORCE_LPU ; 
 int /*<<< orphan*/  RTC_CNTL_LSLP_MEM_FORCE_PU ; 
 int /*<<< orphan*/  RTC_CNTL_PWC_REG ; 
 int /*<<< orphan*/  RTC_CNTL_SLOWMEM_FORCE_LPU ; 

void FUNC2(rtc_sleep_pd_config_t cfg)
{
    FUNC1(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_LSLP_MEM_FORCE_PU, cfg.dig_fpu);
    FUNC1(RTC_CNTL_PWC_REG, RTC_CNTL_FASTMEM_FORCE_LPU, cfg.rtc_fpu);
    FUNC1(RTC_CNTL_PWC_REG, RTC_CNTL_SLOWMEM_FORCE_LPU, cfg.rtc_fpu);
    //DPORT_REG_SET_FIELD(DPORT_MEM_PD_MASK_REG, DPORT_LSLP_MEM_PD_MASK, ~cfg.cpu_pd);
    FUNC1(FUNC0(0), I2S_PLC_MEM_FORCE_PU, cfg.i2s_fpu);
    FUNC1(FUNC0(0), I2S_FIFO_FORCE_PU, cfg.i2s_fpu);
    FUNC1(APB_CTRL_FRONT_END_MEM_PD_REG, APB_CTRL_DC_MEM_FORCE_PU, cfg.fe_fpu);
    FUNC1(APB_CTRL_FRONT_END_MEM_PD_REG, APB_CTRL_PBUS_MEM_FORCE_PU, cfg.fe_fpu);
    FUNC1(APB_CTRL_FRONT_END_MEM_PD_REG, APB_CTRL_AGC_MEM_FORCE_PU, cfg.fe_fpu);
    FUNC1(BBPD_CTRL, BB_FFT_FORCE_PU, cfg.bb_fpu);
    FUNC1(BBPD_CTRL, BB_DC_EST_FORCE_PU, cfg.bb_fpu);
    FUNC1(NRXPD_CTRL, NRX_RX_ROT_FORCE_PU, cfg.nrx_fpu);
    FUNC1(NRXPD_CTRL, NRX_VIT_FORCE_PU, cfg.nrx_fpu);
    FUNC1(NRXPD_CTRL, NRX_DEMAP_FORCE_PU, cfg.nrx_fpu);
    FUNC1(FE_GEN_CTRL, FE_IQ_EST_FORCE_PU, cfg.fe_fpu);
    FUNC1(FE2_TX_INTERP_CTRL, FE2_TX_INF_FORCE_PU, cfg.fe_fpu);
}