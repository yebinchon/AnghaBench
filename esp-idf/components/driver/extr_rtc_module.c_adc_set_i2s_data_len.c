
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_err_t ;
typedef int adc_unit_t ;
struct TYPE_3__ {int sar1_patt_len; int sar2_patt_len; } ;
struct TYPE_4__ {TYPE_1__ saradc_ctrl; } ;


 int ADC_CHECK_UNIT (int) ;
 int ADC_PATT_LEN_MAX ;
 int ADC_UNIT_1 ;
 int ADC_UNIT_2 ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_MODULE_CHECK (int,char*,int ) ;
 TYPE_2__ SYSCON ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

__attribute__((used)) static esp_err_t adc_set_i2s_data_len(adc_unit_t adc_unit, int patt_len)
{
    ADC_CHECK_UNIT(adc_unit);
    RTC_MODULE_CHECK((patt_len < ADC_PATT_LEN_MAX) && (patt_len > 0), "ADC pattern length error", ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&rtc_spinlock);
    if(adc_unit & ADC_UNIT_1) {
        SYSCON.saradc_ctrl.sar1_patt_len = patt_len - 1;
    }
    if(adc_unit & ADC_UNIT_2) {
        SYSCON.saradc_ctrl.sar2_patt_len = patt_len - 1;
    }
    portEXIT_CRITICAL(&rtc_spinlock);
    return ESP_OK;
}
