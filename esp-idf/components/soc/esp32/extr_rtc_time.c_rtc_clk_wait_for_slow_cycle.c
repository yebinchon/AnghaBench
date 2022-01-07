
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GET_PERI_REG_MASK (int ,int) ;
 int REG_CLR_BIT (int ,int) ;
 int REG_SET_BIT (int ,int) ;
 int REG_SET_FIELD (int ,int ,int ) ;
 int RTC_CAL_RTC_MUX ;
 int TIMG_RTCCALICFG_REG (int ) ;
 int TIMG_RTC_CALI_CLK_SEL ;
 int TIMG_RTC_CALI_MAX ;
 int TIMG_RTC_CALI_RDY ;
 int TIMG_RTC_CALI_START ;
 int TIMG_RTC_CALI_START_CYCLING ;
 int ets_delay_us (int) ;

void rtc_clk_wait_for_slow_cycle(void)
{
    REG_CLR_BIT(TIMG_RTCCALICFG_REG(0), TIMG_RTC_CALI_START_CYCLING | TIMG_RTC_CALI_START);
    REG_CLR_BIT(TIMG_RTCCALICFG_REG(0), TIMG_RTC_CALI_RDY);
    REG_SET_FIELD(TIMG_RTCCALICFG_REG(0), TIMG_RTC_CALI_CLK_SEL, RTC_CAL_RTC_MUX);



    REG_SET_FIELD(TIMG_RTCCALICFG_REG(0), TIMG_RTC_CALI_MAX, 0);
    REG_SET_BIT(TIMG_RTCCALICFG_REG(0), TIMG_RTC_CALI_START);
    ets_delay_us(1);
    while (!GET_PERI_REG_MASK(TIMG_RTCCALICFG_REG(0), TIMG_RTC_CALI_RDY)) {
        ets_delay_us(1);
    }
}
