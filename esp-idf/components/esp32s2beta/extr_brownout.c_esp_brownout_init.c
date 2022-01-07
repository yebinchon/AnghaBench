
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_ERROR_CHECK (int ) ;
 int REG_SET_BIT (int ,int ) ;
 int RTC_CNTL_BROWN_OUT_INT_ENA_M ;
 int RTC_CNTL_INT_ENA_REG ;
 int rtc_brownout_isr_handler ;
 int rtc_isr_register (int ,int *,int ) ;

void esp_brownout_init(void)
{


    ESP_ERROR_CHECK( rtc_isr_register(rtc_brownout_isr_handler, ((void*)0), RTC_CNTL_BROWN_OUT_INT_ENA_M) );

    REG_SET_BIT(RTC_CNTL_INT_ENA_REG, RTC_CNTL_BROWN_OUT_INT_ENA_M);
}
