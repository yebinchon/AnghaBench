#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_4__ {scalar_t__ adc_num; int /*<<< orphan*/  bit_width; } ;
typedef  TYPE_1__ esp_adc_cal_characteristics_t ;
typedef  scalar_t__ adc_channel_t ;
typedef  scalar_t__ adc2_channel_t ;
typedef  scalar_t__ adc1_channel_t ;

/* Variables and functions */
 scalar_t__ ADC1_CHANNEL_MAX ; 
 scalar_t__ ADC2_CHANNEL_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ ADC_UNIT_1 ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_ERR_TIMEOUT ; 
 scalar_t__ ESP_OK ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__ const*) ; 

esp_err_t FUNC4(adc_channel_t channel,
                                  const esp_adc_cal_characteristics_t *chars,
                                  uint32_t *voltage)
{
    //Check parameters
    FUNC0(chars != NULL, ESP_ERR_INVALID_ARG);
    FUNC0(voltage != NULL, ESP_ERR_INVALID_ARG);

    int adc_reading;
    if (chars->adc_num == ADC_UNIT_1) {
        //Check channel is valid on ADC1
        FUNC0((adc1_channel_t)channel < ADC1_CHANNEL_MAX, ESP_ERR_INVALID_ARG);
        adc_reading = FUNC1(channel);
    } else {
        //Check channel is valid on ADC2
        FUNC0((adc2_channel_t)channel < ADC2_CHANNEL_MAX, ESP_ERR_INVALID_ARG);
        if (FUNC2(channel, chars->bit_width, &adc_reading) != ESP_OK) {
            return ESP_ERR_TIMEOUT;     //Timed out waiting for ADC2
        }
    }
    *voltage = FUNC3((uint32_t)adc_reading, chars);
    return ESP_OK;
}