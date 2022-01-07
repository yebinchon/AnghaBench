
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_err_t ;


 int ADC1_CHANNEL_6 ;
 int ADC_ATTEN_DB_11 ;
 int ADC_WIDTH_BIT_12 ;
 int ESP_ERROR_CHECK (int ) ;
 int GPIO_NUM_12 ;
 int GPIO_NUM_15 ;
 int adc1_config_channel_atten (int ,int ) ;
 int adc1_config_width (int ) ;
 int adc1_ulp_enable () ;
 int esp_deep_sleep_disable_rom_logging () ;
 int rtc_gpio_isolate (int ) ;
 int ulp_high_thr ;
 int ulp_load_binary (int ,int,int) ;
 int ulp_low_thr ;
 int ulp_main_bin_end ;
 int ulp_main_bin_start ;
 int ulp_set_wakeup_period (int ,int) ;

__attribute__((used)) static void init_ulp_program(void)
{
    esp_err_t err = ulp_load_binary(0, ulp_main_bin_start,
            (ulp_main_bin_end - ulp_main_bin_start) / sizeof(uint32_t));
    ESP_ERROR_CHECK(err);




    adc1_config_channel_atten(ADC1_CHANNEL_6, ADC_ATTEN_DB_11);
    adc1_config_width(ADC_WIDTH_BIT_12);
    adc1_ulp_enable();


    ulp_low_thr = 1500;
    ulp_high_thr = 2000;


    ulp_set_wakeup_period(0, 20000);





    rtc_gpio_isolate(GPIO_NUM_12);
    rtc_gpio_isolate(GPIO_NUM_15);
    esp_deep_sleep_disable_rom_logging();
}
