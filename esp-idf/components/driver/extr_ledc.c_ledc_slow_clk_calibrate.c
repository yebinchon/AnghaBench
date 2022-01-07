
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint32_t ;


 int DELAY_CLK8M_CLK_SWITCH ;
 int ESP_LOGD (int ,char*,unsigned long long) ;
 int ESP_LOGE (int ,char*) ;
 int LEDC_TAG ;
 int RTC_CAL_8MD256 ;
 int RTC_CLK_CAL_FRACT ;
 int RTC_CNTL_CLK_CONF_REG ;
 int RTC_CNTL_DIG_CLK8M_EN_M ;
 int SET_PERI_REG_MASK (int ,int ) ;
 int SLOW_CLK_CYC_CALIBRATE ;
 int ets_delay_us (int ) ;
 unsigned long long rtc_clk_cal (int ,int ) ;
 unsigned long long s_ledc_slow_clk_8M ;

__attribute__((used)) static bool ledc_slow_clk_calibrate(void)
{
    ESP_LOGE(LEDC_TAG, "CLK8M source currently only supported on ESP32");
    return 0;

}
