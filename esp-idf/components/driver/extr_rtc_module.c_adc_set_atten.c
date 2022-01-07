
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;
typedef int adc_unit_t ;
typedef int adc_channel_t ;
typedef scalar_t__ adc_atten_t ;
typedef scalar_t__ adc1_channel_t ;


 scalar_t__ ADC1_CHANNEL_MAX ;
 scalar_t__ ADC_ATTEN_MAX ;
 int ADC_CHECK_UNIT (int) ;
 int ADC_UNIT_1 ;
 int ADC_UNIT_2 ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_MODULE_CHECK (int,char*,int ) ;
 int SENS_SAR1_ATTEN_VAL_MASK ;
 int SENS_SAR2_ATTEN_VAL_MASK ;
 int SENS_SAR_ATTEN1_REG ;
 int SENS_SAR_ATTEN2_REG ;
 int SET_PERI_REG_BITS (int ,int ,scalar_t__,int) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

__attribute__((used)) static esp_err_t adc_set_atten(adc_unit_t adc_unit, adc_channel_t channel, adc_atten_t atten)
{
    ADC_CHECK_UNIT(adc_unit);
    if (adc_unit & ADC_UNIT_1) {
        RTC_MODULE_CHECK((adc1_channel_t)channel < ADC1_CHANNEL_MAX, "ADC Channel Err", ESP_ERR_INVALID_ARG);
    }
    RTC_MODULE_CHECK(atten < ADC_ATTEN_MAX, "ADC Atten Err", ESP_ERR_INVALID_ARG);

    portENTER_CRITICAL(&rtc_spinlock);
    if (adc_unit & ADC_UNIT_1) {

        SET_PERI_REG_BITS(SENS_SAR_ATTEN1_REG, SENS_SAR1_ATTEN_VAL_MASK, atten, (channel * 2));
    }
    if (adc_unit & ADC_UNIT_2) {

        SET_PERI_REG_BITS(SENS_SAR_ATTEN2_REG, SENS_SAR2_ATTEN_VAL_MASK, atten, (channel * 2));
    }
    portEXIT_CRITICAL(&rtc_spinlock);
    return ESP_OK;
}
