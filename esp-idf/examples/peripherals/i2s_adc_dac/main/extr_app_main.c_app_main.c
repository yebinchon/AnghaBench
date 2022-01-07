
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_LOG_INFO ;
 int ESP_OK ;
 int adc_read_task ;
 int esp_log_level_set (char*,int ) ;
 int example_i2s_adc_dac ;
 int example_i2s_init () ;
 int xTaskCreate (int ,char*,int,int *,int,int *) ;

esp_err_t app_main(void)
{
    example_i2s_init();
    esp_log_level_set("I2S", ESP_LOG_INFO);
    xTaskCreate(example_i2s_adc_dac, "example_i2s_adc_dac", 1024 * 2, ((void*)0), 5, ((void*)0));
    xTaskCreate(adc_read_task, "ADC read task", 2048, ((void*)0), 5, ((void*)0));
    return ESP_OK;
}
