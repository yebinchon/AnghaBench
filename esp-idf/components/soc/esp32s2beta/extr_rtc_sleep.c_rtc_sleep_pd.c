
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fe_fpu; int nrx_fpu; int bb_fpu; int i2s_fpu; int rtc_fpu; int dig_fpu; } ;
typedef TYPE_1__ rtc_sleep_pd_config_t ;


 int APB_CTRL_AGC_MEM_FORCE_PU ;
 int APB_CTRL_DC_MEM_FORCE_PU ;
 int APB_CTRL_FRONT_END_MEM_PD_REG ;
 int APB_CTRL_PBUS_MEM_FORCE_PU ;
 int BBPD_CTRL ;
 int BB_DC_EST_FORCE_PU ;
 int BB_FFT_FORCE_PU ;
 int FE2_TX_INF_FORCE_PU ;
 int FE2_TX_INTERP_CTRL ;
 int FE_GEN_CTRL ;
 int FE_IQ_EST_FORCE_PU ;
 int I2S_FIFO_FORCE_PU ;
 int I2S_PD_CONF_REG (int ) ;
 int I2S_PLC_MEM_FORCE_PU ;
 int NRXPD_CTRL ;
 int NRX_DEMAP_FORCE_PU ;
 int NRX_RX_ROT_FORCE_PU ;
 int NRX_VIT_FORCE_PU ;
 int REG_SET_FIELD (int ,int ,int ) ;
 int RTC_CNTL_DIG_PWC_REG ;
 int RTC_CNTL_FASTMEM_FORCE_LPU ;
 int RTC_CNTL_LSLP_MEM_FORCE_PU ;
 int RTC_CNTL_PWC_REG ;
 int RTC_CNTL_SLOWMEM_FORCE_LPU ;

void rtc_sleep_pd(rtc_sleep_pd_config_t cfg)
{
    REG_SET_FIELD(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_LSLP_MEM_FORCE_PU, cfg.dig_fpu);
    REG_SET_FIELD(RTC_CNTL_PWC_REG, RTC_CNTL_FASTMEM_FORCE_LPU, cfg.rtc_fpu);
    REG_SET_FIELD(RTC_CNTL_PWC_REG, RTC_CNTL_SLOWMEM_FORCE_LPU, cfg.rtc_fpu);

    REG_SET_FIELD(I2S_PD_CONF_REG(0), I2S_PLC_MEM_FORCE_PU, cfg.i2s_fpu);
    REG_SET_FIELD(I2S_PD_CONF_REG(0), I2S_FIFO_FORCE_PU, cfg.i2s_fpu);
    REG_SET_FIELD(APB_CTRL_FRONT_END_MEM_PD_REG, APB_CTRL_DC_MEM_FORCE_PU, cfg.fe_fpu);
    REG_SET_FIELD(APB_CTRL_FRONT_END_MEM_PD_REG, APB_CTRL_PBUS_MEM_FORCE_PU, cfg.fe_fpu);
    REG_SET_FIELD(APB_CTRL_FRONT_END_MEM_PD_REG, APB_CTRL_AGC_MEM_FORCE_PU, cfg.fe_fpu);
    REG_SET_FIELD(BBPD_CTRL, BB_FFT_FORCE_PU, cfg.bb_fpu);
    REG_SET_FIELD(BBPD_CTRL, BB_DC_EST_FORCE_PU, cfg.bb_fpu);
    REG_SET_FIELD(NRXPD_CTRL, NRX_RX_ROT_FORCE_PU, cfg.nrx_fpu);
    REG_SET_FIELD(NRXPD_CTRL, NRX_VIT_FORCE_PU, cfg.nrx_fpu);
    REG_SET_FIELD(NRXPD_CTRL, NRX_DEMAP_FORCE_PU, cfg.nrx_fpu);
    REG_SET_FIELD(FE_GEN_CTRL, FE_IQ_EST_FORCE_PU, cfg.fe_fpu);
    REG_SET_FIELD(FE2_TX_INTERP_CTRL, FE2_TX_INF_FORCE_PU, cfg.fe_fpu);
}
