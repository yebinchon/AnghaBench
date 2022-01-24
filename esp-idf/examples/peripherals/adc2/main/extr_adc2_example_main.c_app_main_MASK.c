#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int gpio_num_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int ADC2_EXAMPLE_CHANNEL ; 
 int /*<<< orphan*/  ADC_ATTEN_0db ; 
 int /*<<< orphan*/  ADC_WIDTH_12Bit ; 
 int DAC_EXAMPLE_CHANNEL ; 
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_ERR_TIMEOUT ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int*) ; 
 char* FUNC7 (scalar_t__) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(void)
{
    uint8_t output_data=0;
    int     read_raw;
    esp_err_t r;

    gpio_num_t adc_gpio_num, dac_gpio_num;

    r = FUNC2( ADC2_EXAMPLE_CHANNEL, &adc_gpio_num );
    FUNC3( r == ESP_OK );
    r = FUNC6( DAC_EXAMPLE_CHANNEL, &dac_gpio_num );
    FUNC3( r == ESP_OK );

    FUNC8("ADC channel %d @ GPIO %d, DAC channel %d @ GPIO %d.\n", ADC2_EXAMPLE_CHANNEL, adc_gpio_num,
                DAC_EXAMPLE_CHANNEL, dac_gpio_num );

    FUNC4( DAC_EXAMPLE_CHANNEL );

    //be sure to do the init before using adc2. 
    FUNC8("adc2_init...\n");
    FUNC0( ADC2_EXAMPLE_CHANNEL, ADC_ATTEN_0db );

    FUNC9(2 * portTICK_PERIOD_MS);

    FUNC8("start conversion.\n");
    while(1) {
        FUNC5( DAC_EXAMPLE_CHANNEL, output_data++ );
        r = FUNC1( ADC2_EXAMPLE_CHANNEL, ADC_WIDTH_12Bit, &read_raw);
        if ( r == ESP_OK ) {
            FUNC8("%d: %d\n", output_data, read_raw );
        } else if ( r == ESP_ERR_INVALID_STATE ) {
            FUNC8("%s: ADC2 not initialized yet.\n", FUNC7(r));
        } else if ( r == ESP_ERR_TIMEOUT ) {
            //This can not happen in this example. But if WiFi is in use, such error code could be returned.
            FUNC8("%s: ADC2 is in use by Wi-Fi.\n", FUNC7(r));
        } else {
            FUNC8("%s\n", FUNC7(r));
        }

        FUNC9( 2 * portTICK_PERIOD_MS );
    }
}