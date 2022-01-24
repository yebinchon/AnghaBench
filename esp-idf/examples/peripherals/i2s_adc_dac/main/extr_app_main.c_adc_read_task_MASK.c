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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  esp_adc_cal_characteristics_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADC1_TEST_CHANNEL ; 
 int /*<<< orphan*/  ADC_ATTEN_11db ; 
 int /*<<< orphan*/  ADC_ATTEN_DB_11 ; 
 int /*<<< orphan*/  ADC_UNIT_1 ; 
 int /*<<< orphan*/  ADC_WIDTH_12Bit ; 
 int /*<<< orphan*/  ADC_WIDTH_BIT_12 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  V_REF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(void* arg)
{
    FUNC2(ADC_WIDTH_12Bit);
    FUNC1(ADC1_TEST_CHANNEL, ADC_ATTEN_11db);
    esp_adc_cal_characteristics_t characteristics;
    FUNC3(ADC_UNIT_1, ADC_ATTEN_DB_11, ADC_WIDTH_BIT_12, V_REF, &characteristics);
    while(1) {
        uint32_t voltage;
        FUNC4(ADC1_TEST_CHANNEL, &characteristics, &voltage);
        FUNC0(TAG, "%d mV", voltage);
        FUNC5(200 / portTICK_RATE_MS);
    }
}