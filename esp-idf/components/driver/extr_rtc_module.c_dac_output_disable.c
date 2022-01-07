
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;
typedef scalar_t__ dac_channel_t ;


 scalar_t__ DAC_CHANNEL_1 ;
 scalar_t__ DAC_CHANNEL_MAX ;
 int DAC_ERR_STR_CHANNEL_ERROR ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_MODULE_CHECK (int,int ,int ) ;
 int dac_output_set_enable (scalar_t__,int) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

esp_err_t dac_output_disable(dac_channel_t channel)
{
    RTC_MODULE_CHECK((channel >= DAC_CHANNEL_1) && (channel < DAC_CHANNEL_MAX), DAC_ERR_STR_CHANNEL_ERROR, ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&rtc_spinlock);
    dac_output_set_enable(channel, 0);
    portEXIT_CRITICAL(&rtc_spinlock);

    return ESP_OK;
}
