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
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  scalar_t__ adc_atten_t ;
typedef  scalar_t__ adc1_channel_t ;

/* Variables and functions */
 scalar_t__ ADC1_CHANNEL_MAX ; 
 scalar_t__ ADC_ATTEN_MAX ; 
 int /*<<< orphan*/  ADC_UNIT_1 ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

esp_err_t FUNC3(adc1_channel_t channel, adc_atten_t atten)
{
    FUNC0(channel < ADC1_CHANNEL_MAX, "ADC Channel Err", ESP_ERR_INVALID_ARG);
    FUNC0(atten < ADC_ATTEN_MAX, "ADC Atten Err", ESP_ERR_INVALID_ARG);
    FUNC1(ADC_UNIT_1, channel);
    FUNC2(ADC_UNIT_1, channel, atten);
    return ESP_OK;
}