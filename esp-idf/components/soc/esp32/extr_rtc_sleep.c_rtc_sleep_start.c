
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ GET_PERI_REG_MASK (int ,int) ;
 int REG_GET_FIELD (int ,int) ;
 int REG_SET_FIELD (int ,int ,int ) ;
 int RTC_CNTL_BIAS_CONF_REG ;
 int RTC_CNTL_DBG_ATTEN ;
 int RTC_CNTL_DBG_ATTEN_DEFAULT ;
 int RTC_CNTL_INT_CLR_REG ;
 int RTC_CNTL_INT_RAW_REG ;
 int RTC_CNTL_SLEEP_EN ;
 int RTC_CNTL_SLP_REJECT_CONF_REG ;
 int RTC_CNTL_SLP_REJECT_INT_CLR ;
 int RTC_CNTL_SLP_REJECT_INT_RAW ;
 int RTC_CNTL_SLP_WAKEUP_INT_CLR ;
 int RTC_CNTL_SLP_WAKEUP_INT_RAW ;
 int RTC_CNTL_STATE0_REG ;
 int RTC_CNTL_WAKEUP_ENA ;
 int RTC_CNTL_WAKEUP_STATE_REG ;
 int SET_PERI_REG_MASK (int ,int) ;
 int WRITE_PERI_REG (int ,int ) ;

uint32_t rtc_sleep_start(uint32_t wakeup_opt, uint32_t reject_opt)
{
    REG_SET_FIELD(RTC_CNTL_WAKEUP_STATE_REG, RTC_CNTL_WAKEUP_ENA, wakeup_opt);
    WRITE_PERI_REG(RTC_CNTL_SLP_REJECT_CONF_REG, reject_opt);


    SET_PERI_REG_MASK(RTC_CNTL_STATE0_REG, RTC_CNTL_SLEEP_EN);

    while (GET_PERI_REG_MASK(RTC_CNTL_INT_RAW_REG,
            RTC_CNTL_SLP_REJECT_INT_RAW | RTC_CNTL_SLP_WAKEUP_INT_RAW) == 0) {
        ;
    }

    uint32_t reject = REG_GET_FIELD(RTC_CNTL_INT_RAW_REG, RTC_CNTL_SLP_REJECT_INT_RAW);
    SET_PERI_REG_MASK(RTC_CNTL_INT_CLR_REG,
            RTC_CNTL_SLP_REJECT_INT_CLR | RTC_CNTL_SLP_WAKEUP_INT_CLR);


    REG_SET_FIELD(RTC_CNTL_BIAS_CONF_REG, RTC_CNTL_DBG_ATTEN, RTC_CNTL_DBG_ATTEN_DEFAULT);
    return reject;
}
