
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_err_t ;
typedef scalar_t__ adc_i2s_source_t ;
struct TYPE_3__ {scalar_t__ data_to_i2s; } ;
struct TYPE_4__ {TYPE_1__ saradc_ctrl; } ;


 scalar_t__ ADC_I2S_DATA_SRC_MAX ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_MODULE_CHECK (int,char*,int ) ;
 TYPE_2__ SYSCON ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

esp_err_t adc_set_i2s_data_source(adc_i2s_source_t src)
{
    RTC_MODULE_CHECK(src < ADC_I2S_DATA_SRC_MAX, "ADC i2s data source error", ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&rtc_spinlock);

    SYSCON.saradc_ctrl.data_to_i2s = src;
    portEXIT_CRITICAL(&rtc_spinlock);
    return ESP_OK;
}
