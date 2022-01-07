
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;
typedef scalar_t__ esp_adc_cal_value_t ;


 scalar_t__ ESP_ADC_CAL_VAL_EFUSE_TP ;
 scalar_t__ ESP_ADC_CAL_VAL_EFUSE_VREF ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_OK ;
 scalar_t__ check_efuse_tp () ;
 scalar_t__ check_efuse_vref () ;

esp_err_t esp_adc_cal_check_efuse(esp_adc_cal_value_t source)
{
    if (source == ESP_ADC_CAL_VAL_EFUSE_TP) {
        return (check_efuse_tp()) ? ESP_OK : ESP_ERR_NOT_SUPPORTED;
    } else if (source == ESP_ADC_CAL_VAL_EFUSE_VREF) {
        return (check_efuse_vref()) ? ESP_OK : ESP_ERR_NOT_SUPPORTED;
    } else {
        return ESP_ERR_INVALID_ARG;
    }
}
