
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BROWNOUT_DET_LVL ;
 int ESP_ERROR_CHECK (int ) ;
 int REG_SET_BIT (int ,int ) ;
 int REG_WRITE (int ,int) ;
 int RTC_CNTL_BROWN_OUT_ENA ;
 int RTC_CNTL_BROWN_OUT_INT_ENA_M ;
 int RTC_CNTL_BROWN_OUT_PD_RF_ENA ;
 int RTC_CNTL_BROWN_OUT_REG ;
 int RTC_CNTL_BROWN_OUT_RST_WAIT_S ;
 int RTC_CNTL_DBROWN_OUT_THRES_S ;
 int RTC_CNTL_INT_ENA_REG ;
 int rtc_brownout_isr_handler ;
 int rtc_isr_register (int ,int *,int ) ;

void esp_brownout_init(void)
{
    REG_WRITE(RTC_CNTL_BROWN_OUT_REG,
            RTC_CNTL_BROWN_OUT_ENA
            | RTC_CNTL_BROWN_OUT_PD_RF_ENA

            | (2 << RTC_CNTL_BROWN_OUT_RST_WAIT_S)
            | (BROWNOUT_DET_LVL << RTC_CNTL_DBROWN_OUT_THRES_S));

    ESP_ERROR_CHECK( rtc_isr_register(rtc_brownout_isr_handler, ((void*)0), RTC_CNTL_BROWN_OUT_INT_ENA_M) );

    REG_SET_BIT(RTC_CNTL_INT_ENA_REG, RTC_CNTL_BROWN_OUT_INT_ENA_M);
}
