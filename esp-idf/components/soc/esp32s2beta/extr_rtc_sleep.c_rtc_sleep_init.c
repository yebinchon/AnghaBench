
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtc_sleep_pd_config_t ;
struct TYPE_3__ {int vddsdio_pd_en; int rtc_dbias_slp; int rtc_dbias_wak; int dig_dbias_wak; int dig_dbias_slp; int deep_slp_reject; int light_slp_reject; scalar_t__ deep_slp; scalar_t__ wifi_pd_en; scalar_t__ rtc_peri_pd_en; scalar_t__ rtc_slowmem_pd_en; scalar_t__ rtc_fastmem_pd_en; scalar_t__ rtc_mem_inf_follow_cpu; scalar_t__ lslp_mem_inf_fpu; } ;
typedef TYPE_1__ rtc_sleep_config_t ;


 int CLEAR_PERI_REG_MASK (int ,int) ;
 int REG_CLR_BIT (int ,int ) ;
 int REG_SET_FIELD (int ,int ,int) ;
 int RTC_CNTL_ANA_CONF_REG ;
 int RTC_CNTL_BIAS_CONF_REG ;
 int RTC_CNTL_CKGEN_I2C_PU ;
 int RTC_CNTL_DBG_ATTEN ;
 int RTC_CNTL_DBG_ATTEN_DEFAULT ;
 int RTC_CNTL_DBIAS_SLP ;
 int RTC_CNTL_DBIAS_WAK ;
 int RTC_CNTL_DEEP_SLP_REJECT_EN ;
 int RTC_CNTL_DG_WRAP_PD_EN ;
 int RTC_CNTL_DIG_DBIAS_SLP ;
 int RTC_CNTL_DIG_DBIAS_WAK ;
 int RTC_CNTL_DIG_PWC_REG ;
 int RTC_CNTL_FASTMEM_FORCE_NOISO ;
 int RTC_CNTL_FASTMEM_FORCE_PU ;
 int RTC_CNTL_FASTMEM_PD_EN ;
 int RTC_CNTL_LIGHT_SLP_REJECT_EN ;
 int RTC_CNTL_MEM_FOLW_CPU ;
 int RTC_CNTL_PD_EN ;
 int RTC_CNTL_PLL_I2C_PU ;
 int RTC_CNTL_PWC_REG ;
 int RTC_CNTL_REG ;
 int RTC_CNTL_RFRX_PBUS_PU ;
 int RTC_CNTL_SDIO_CONF_REG ;
 int RTC_CNTL_SDIO_FORCE ;
 int RTC_CNTL_SDIO_PD_EN ;
 int RTC_CNTL_SLOWMEM_FORCE_NOISO ;
 int RTC_CNTL_SLOWMEM_FORCE_PU ;
 int RTC_CNTL_SLOWMEM_PD_EN ;
 int RTC_CNTL_SLP_REJECT_CONF_REG ;
 int RTC_CNTL_TXRF_I2C_PU ;
 int RTC_CNTL_WIFI_PD_EN ;
 int RTC_SLEEP_PD_CONFIG_ALL (int) ;
 int SET_PERI_REG_MASK (int ,int) ;
 int rtc_sleep_pd (int ) ;

void rtc_sleep_init(rtc_sleep_config_t cfg)
{







    if (cfg.lslp_mem_inf_fpu)
    {
        rtc_sleep_pd_config_t pd_cfg = RTC_SLEEP_PD_CONFIG_ALL(1);
        rtc_sleep_pd(pd_cfg);
    }
    if (cfg.rtc_mem_inf_follow_cpu) {
        SET_PERI_REG_MASK(RTC_CNTL_PWC_REG, RTC_CNTL_MEM_FOLW_CPU);
    } else {
        CLEAR_PERI_REG_MASK(RTC_CNTL_PWC_REG, RTC_CNTL_MEM_FOLW_CPU);
    }

    if (cfg.rtc_fastmem_pd_en) {
        SET_PERI_REG_MASK(RTC_CNTL_PWC_REG, RTC_CNTL_FASTMEM_PD_EN);
        CLEAR_PERI_REG_MASK(RTC_CNTL_PWC_REG,RTC_CNTL_FASTMEM_FORCE_PU);
        CLEAR_PERI_REG_MASK(RTC_CNTL_PWC_REG,RTC_CNTL_FASTMEM_FORCE_NOISO);
    } else {
        CLEAR_PERI_REG_MASK(RTC_CNTL_PWC_REG, RTC_CNTL_FASTMEM_PD_EN);
        SET_PERI_REG_MASK(RTC_CNTL_PWC_REG,RTC_CNTL_FASTMEM_FORCE_PU);
        SET_PERI_REG_MASK(RTC_CNTL_PWC_REG,RTC_CNTL_FASTMEM_FORCE_NOISO);
    }

    if (cfg.rtc_slowmem_pd_en) {
        SET_PERI_REG_MASK(RTC_CNTL_PWC_REG, RTC_CNTL_SLOWMEM_PD_EN);
        CLEAR_PERI_REG_MASK(RTC_CNTL_PWC_REG,RTC_CNTL_SLOWMEM_FORCE_PU);
        CLEAR_PERI_REG_MASK(RTC_CNTL_PWC_REG,RTC_CNTL_SLOWMEM_FORCE_NOISO);
    } else {
        CLEAR_PERI_REG_MASK(RTC_CNTL_PWC_REG, RTC_CNTL_SLOWMEM_PD_EN);
        SET_PERI_REG_MASK(RTC_CNTL_PWC_REG,RTC_CNTL_SLOWMEM_FORCE_PU);
        SET_PERI_REG_MASK(RTC_CNTL_PWC_REG,RTC_CNTL_SLOWMEM_FORCE_NOISO);
    }

    if (cfg.rtc_peri_pd_en) {
        SET_PERI_REG_MASK(RTC_CNTL_PWC_REG, RTC_CNTL_PD_EN);
    } else {
        CLEAR_PERI_REG_MASK(RTC_CNTL_PWC_REG, RTC_CNTL_PD_EN);
    }

    if (cfg.wifi_pd_en) {
        SET_PERI_REG_MASK(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_WIFI_PD_EN);
    } else {
        CLEAR_PERI_REG_MASK(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_WIFI_PD_EN);
    }
    if (cfg.deep_slp) {
        REG_SET_FIELD(RTC_CNTL_BIAS_CONF_REG, RTC_CNTL_DBG_ATTEN, RTC_CNTL_DBG_ATTEN_DEFAULT);
        SET_PERI_REG_MASK(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_DG_WRAP_PD_EN);

        CLEAR_PERI_REG_MASK(RTC_CNTL_ANA_CONF_REG,
                RTC_CNTL_CKGEN_I2C_PU | RTC_CNTL_PLL_I2C_PU |
                RTC_CNTL_RFRX_PBUS_PU | RTC_CNTL_TXRF_I2C_PU);
    } else {
        CLEAR_PERI_REG_MASK(RTC_CNTL_DIG_PWC_REG, RTC_CNTL_DG_WRAP_PD_EN);
        REG_SET_FIELD(RTC_CNTL_BIAS_CONF_REG, RTC_CNTL_DBG_ATTEN, 6);
    }


    REG_CLR_BIT(RTC_CNTL_SDIO_CONF_REG, RTC_CNTL_SDIO_FORCE);
    REG_SET_FIELD(RTC_CNTL_SDIO_CONF_REG, RTC_CNTL_SDIO_PD_EN, cfg.vddsdio_pd_en);

    REG_SET_FIELD(RTC_CNTL_REG, RTC_CNTL_DBIAS_SLP, cfg.rtc_dbias_slp);
    REG_SET_FIELD(RTC_CNTL_REG, RTC_CNTL_DBIAS_WAK, cfg.rtc_dbias_wak);
    REG_SET_FIELD(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, cfg.dig_dbias_wak);
    REG_SET_FIELD(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_SLP, cfg.dig_dbias_slp);

    REG_SET_FIELD(RTC_CNTL_SLP_REJECT_CONF_REG, RTC_CNTL_DEEP_SLP_REJECT_EN, cfg.deep_slp_reject);
    REG_SET_FIELD(RTC_CNTL_SLP_REJECT_CONF_REG, RTC_CNTL_LIGHT_SLP_REJECT_EN, cfg.light_slp_reject);
}
