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
typedef  scalar_t__ adc_bits_width_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_UNIT_1 ; 
 scalar_t__ ADC_WIDTH_MAX ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

esp_err_t FUNC3(adc_bits_width_t width_bit)
{
    FUNC0(width_bit < ADC_WIDTH_MAX, "ADC bit width error", ESP_ERR_INVALID_ARG);
    FUNC2(ADC_UNIT_1, width_bit);
    FUNC1(ADC_UNIT_1, true);
    return ESP_OK;
}