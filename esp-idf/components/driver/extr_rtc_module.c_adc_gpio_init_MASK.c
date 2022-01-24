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
typedef  int /*<<< orphan*/  gpio_num_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int adc_unit_t ;
typedef  scalar_t__ adc_channel_t ;
typedef  scalar_t__ adc1_channel_t ;

/* Variables and functions */
 scalar_t__ ADC1_CHANNEL_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ADC_UNIT_1 ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  GPIO_FLOATING ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

esp_err_t FUNC8(adc_unit_t adc_unit, adc_channel_t channel)
{
    FUNC1(adc_unit);
    gpio_num_t gpio_num = 0;
    if (adc_unit & ADC_UNIT_1) {
        FUNC2((adc1_channel_t) channel < ADC1_CHANNEL_MAX, "ADC1 channel error", ESP_ERR_INVALID_ARG);
        FUNC0(FUNC3((adc1_channel_t) channel, &gpio_num));
        FUNC0(FUNC5(gpio_num));
        FUNC0(FUNC7(gpio_num));
        FUNC0(FUNC6(gpio_num));
        FUNC0(FUNC4(gpio_num, GPIO_FLOATING));
    }
    return ESP_OK;
}