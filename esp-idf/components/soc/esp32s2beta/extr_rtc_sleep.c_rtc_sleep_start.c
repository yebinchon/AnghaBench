
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int rtc_sleep_pd_config_t ;


 scalar_t__ GET_PERI_REG_MASK (int ,int) ;
 scalar_t__ REG_GET_FIELD (int ,int) ;
 int REG_SET_FIELD (int ,int ,scalar_t__) ;
 int RTC_CNTL_INT_CLR_REG ;
 int RTC_CNTL_INT_RAW_REG ;
 int RTC_CNTL_SLEEP_EN ;
 int RTC_CNTL_SLEEP_REJECT_ENA ;
 int RTC_CNTL_SLP_REJECT_CONF_REG ;
 int RTC_CNTL_SLP_REJECT_INT_CLR ;
 int RTC_CNTL_SLP_REJECT_INT_RAW ;
 int RTC_CNTL_SLP_WAKEUP_INT_CLR ;
 int RTC_CNTL_SLP_WAKEUP_INT_RAW ;
 int RTC_CNTL_STATE0_REG ;
 int RTC_CNTL_WAKEUP_ENA ;
 int RTC_CNTL_WAKEUP_STATE_REG ;
 int RTC_SLEEP_PD_CONFIG_ALL (int ) ;
 int SET_PERI_REG_MASK (int ,int) ;
 int rtc_sleep_pd (int ) ;

uint32_t rtc_sleep_start(uint32_t wakeup_opt, uint32_t reject_opt, uint32_t lslp_mem_inf_fpu)
{
    REG_SET_FIELD(RTC_CNTL_WAKEUP_STATE_REG, RTC_CNTL_WAKEUP_ENA, wakeup_opt);
    REG_SET_FIELD(RTC_CNTL_SLP_REJECT_CONF_REG, RTC_CNTL_SLEEP_REJECT_ENA, reject_opt);


    SET_PERI_REG_MASK(RTC_CNTL_STATE0_REG, RTC_CNTL_SLEEP_EN);

    while (GET_PERI_REG_MASK(RTC_CNTL_INT_RAW_REG,
            RTC_CNTL_SLP_REJECT_INT_RAW | RTC_CNTL_SLP_WAKEUP_INT_RAW) == 0) {
        ;
    }

    uint32_t reject = REG_GET_FIELD(RTC_CNTL_INT_RAW_REG, RTC_CNTL_SLP_REJECT_INT_RAW);
    SET_PERI_REG_MASK(RTC_CNTL_INT_CLR_REG,
            RTC_CNTL_SLP_REJECT_INT_CLR | RTC_CNTL_SLP_WAKEUP_INT_CLR);


    if (lslp_mem_inf_fpu)
    {
        rtc_sleep_pd_config_t pd_cfg = RTC_SLEEP_PD_CONFIG_ALL(0);
        rtc_sleep_pd(pd_cfg);
    }




    return reject;
}
