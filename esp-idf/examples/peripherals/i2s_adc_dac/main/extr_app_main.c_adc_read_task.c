
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_adc_cal_characteristics_t ;


 int ADC1_TEST_CHANNEL ;
 int ADC_ATTEN_11db ;
 int ADC_ATTEN_DB_11 ;
 int ADC_UNIT_1 ;
 int ADC_WIDTH_12Bit ;
 int ADC_WIDTH_BIT_12 ;
 int ESP_LOGI (int ,char*,int ) ;
 int TAG ;
 int V_REF ;
 int adc1_config_channel_atten (int ,int ) ;
 int adc1_config_width (int ) ;
 int esp_adc_cal_characterize (int ,int ,int ,int ,int *) ;
 int esp_adc_cal_get_voltage (int ,int *,int *) ;
 int portTICK_RATE_MS ;
 int vTaskDelay (int) ;

void adc_read_task(void* arg)
{
    adc1_config_width(ADC_WIDTH_12Bit);
    adc1_config_channel_atten(ADC1_TEST_CHANNEL, ADC_ATTEN_11db);
    esp_adc_cal_characteristics_t characteristics;
    esp_adc_cal_characterize(ADC_UNIT_1, ADC_ATTEN_DB_11, ADC_WIDTH_BIT_12, V_REF, &characteristics);
    while(1) {
        uint32_t voltage;
        esp_adc_cal_get_voltage(ADC1_TEST_CHANNEL, &characteristics, &voltage);
        ESP_LOGI(TAG, "%d mV", voltage);
        vTaskDelay(200 / portTICK_RATE_MS);
    }
}
