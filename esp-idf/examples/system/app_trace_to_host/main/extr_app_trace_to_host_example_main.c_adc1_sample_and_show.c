
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ADC1_TEST_CHANNEL ;
 int ESP_LOGI (int ,char*,int,int ) ;
 int TAG ;
 int adc1_get_raw (int ) ;
 int esp_log_timestamp () ;

__attribute__((used)) static int adc1_sample_and_show(int sampling_period)
{
    int i = 0;
    uint32_t sampling_start = esp_log_timestamp();
    do {
        ESP_LOGI(TAG, "Sample:%d, Value:%d", ++i, adc1_get_raw(ADC1_TEST_CHANNEL));
    } while (esp_log_timestamp() - sampling_start < sampling_period);
    return i;
}
