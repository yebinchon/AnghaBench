
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int gpio_num_t ;
typedef scalar_t__ esp_err_t ;


 int ADC2_EXAMPLE_CHANNEL ;
 int ADC_ATTEN_0db ;
 int ADC_WIDTH_12Bit ;
 int DAC_EXAMPLE_CHANNEL ;
 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_ERR_TIMEOUT ;
 scalar_t__ ESP_OK ;
 int adc2_config_channel_atten (int,int ) ;
 scalar_t__ adc2_get_raw (int,int ,int*) ;
 scalar_t__ adc2_pad_get_io_num (int,int*) ;
 int assert (int) ;
 int dac_output_enable (int) ;
 int dac_output_voltage (int,int ) ;
 scalar_t__ dac_pad_get_io_num (int,int*) ;
 char* esp_err_to_name (scalar_t__) ;
 int portTICK_PERIOD_MS ;
 int printf (char*,...) ;
 int vTaskDelay (int) ;

void app_main(void)
{
    uint8_t output_data=0;
    int read_raw;
    esp_err_t r;

    gpio_num_t adc_gpio_num, dac_gpio_num;

    r = adc2_pad_get_io_num( ADC2_EXAMPLE_CHANNEL, &adc_gpio_num );
    assert( r == ESP_OK );
    r = dac_pad_get_io_num( DAC_EXAMPLE_CHANNEL, &dac_gpio_num );
    assert( r == ESP_OK );

    printf("ADC channel %d @ GPIO %d, DAC channel %d @ GPIO %d.\n", ADC2_EXAMPLE_CHANNEL, adc_gpio_num,
                DAC_EXAMPLE_CHANNEL, dac_gpio_num );

    dac_output_enable( DAC_EXAMPLE_CHANNEL );


    printf("adc2_init...\n");
    adc2_config_channel_atten( ADC2_EXAMPLE_CHANNEL, ADC_ATTEN_0db );

    vTaskDelay(2 * portTICK_PERIOD_MS);

    printf("start conversion.\n");
    while(1) {
        dac_output_voltage( DAC_EXAMPLE_CHANNEL, output_data++ );
        r = adc2_get_raw( ADC2_EXAMPLE_CHANNEL, ADC_WIDTH_12Bit, &read_raw);
        if ( r == ESP_OK ) {
            printf("%d: %d\n", output_data, read_raw );
        } else if ( r == ESP_ERR_INVALID_STATE ) {
            printf("%s: ADC2 not initialized yet.\n", esp_err_to_name(r));
        } else if ( r == ESP_ERR_TIMEOUT ) {

            printf("%s: ADC2 is in use by Wi-Fi.\n", esp_err_to_name(r));
        } else {
            printf("%s\n", esp_err_to_name(r));
        }

        vTaskDelay( 2 * portTICK_PERIOD_MS );
    }
}
