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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  esp_adc_cal_value_t ;
typedef  int /*<<< orphan*/  esp_adc_cal_characteristics_t ;
typedef  int /*<<< orphan*/  adc2_channel_t ;
typedef  int /*<<< orphan*/  adc1_channel_t ;

/* Variables and functions */
 int ADC_UNIT_1 ; 
 int /*<<< orphan*/  ADC_WIDTH_BIT_12 ; 
 int /*<<< orphan*/  DEFAULT_VREF ; 
 int NO_OF_SAMPLES ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  adc_chars ; 
 int /*<<< orphan*/  atten ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int channel ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int,...) ; 
 int unit ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(void)
{
#if CONFIG_IDF_TARGET_ESP32
    //Check if Two Point or Vref are burned into eFuse
    check_efuse();
#endif

    //Configure ADC
    if (unit == ADC_UNIT_1) {
        FUNC1(ADC_WIDTH_BIT_12);
        FUNC0(channel, atten);
    } else {
        FUNC3((adc2_channel_t)channel, atten);
    }

#if CONFIG_IDF_TARGET_ESP32
    //Characterize ADC
    adc_chars = calloc(1, sizeof(esp_adc_cal_characteristics_t));
    esp_adc_cal_value_t val_type = esp_adc_cal_characterize(unit, atten, ADC_WIDTH_BIT_12, DEFAULT_VREF, adc_chars);
    print_char_val_type(val_type);
#endif

    //Continuously sample ADC1
    while (1) {
        uint32_t adc_reading = 0;
        //Multisampling
        for (int i = 0; i < NO_OF_SAMPLES; i++) {
            if (unit == ADC_UNIT_1) {
                adc_reading += FUNC2((adc1_channel_t)channel);
            } else {
                int raw;
                FUNC4((adc2_channel_t)channel, ADC_WIDTH_BIT_12, &raw);
                adc_reading += raw;
            }
        }
        adc_reading /= NO_OF_SAMPLES;
#if CONFIG_IDF_TARGET_ESP32
        //Convert adc_reading to voltage in mV
        uint32_t voltage = esp_adc_cal_raw_to_voltage(adc_reading, adc_chars);
        printf("Raw: %d\tVoltage: %dmV\n", adc_reading, voltage);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
        printf("ADC%d CH%d Raw: %d\t\n", unit, channel, adc_reading);
#endif
        FUNC12(FUNC9(1000));
    }
}