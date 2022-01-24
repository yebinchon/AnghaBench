#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int bit_width; scalar_t__ atten; int /*<<< orphan*/  coeff_b; int /*<<< orphan*/  coeff_a; int /*<<< orphan*/  high_curve; int /*<<< orphan*/  low_curve; int /*<<< orphan*/  vref; } ;
typedef  TYPE_1__ esp_adc_cal_characteristics_t ;

/* Variables and functions */
 int ADC_12_BIT_RES ; 
 scalar_t__ ADC_ATTEN_DB_11 ; 
 int ADC_WIDTH_BIT_12 ; 
 int /*<<< orphan*/  LUT_ADC_STEP_SIZE ; 
 scalar_t__ LUT_ENABLED ; 
 int LUT_HIGH_THRESH ; 
 int LUT_LOW_THRESH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ,int) ; 

uint32_t FUNC4(uint32_t adc_reading, const esp_adc_cal_characteristics_t *chars)
{
    FUNC0(chars != NULL);

    //Scale adc_rading if not 12 bits wide
    adc_reading = (adc_reading << (ADC_WIDTH_BIT_12 - chars->bit_width));
    if (adc_reading > ADC_12_BIT_RES - 1) {
        adc_reading = ADC_12_BIT_RES - 1;    //Set to 12bit res max
    }

    if (LUT_ENABLED && (chars->atten == ADC_ATTEN_DB_11) && (adc_reading >= LUT_LOW_THRESH)) {  //Check if in non-linear region
        //Use lookup table to get voltage in non linear portion of ADC_ATTEN_DB_11
        uint32_t lut_voltage = FUNC2(adc_reading, chars->vref, chars->low_curve, chars->high_curve);
        if (adc_reading <= LUT_HIGH_THRESH) {   //If ADC is transitioning from linear region to non-linear region
            //Linearly interpolate between linear voltage and lut voltage
            uint32_t linear_voltage = FUNC1(adc_reading, chars->coeff_a, chars->coeff_b);
            return FUNC3(linear_voltage, lut_voltage, LUT_ADC_STEP_SIZE, (adc_reading - LUT_LOW_THRESH));
        } else {
            return lut_voltage;
        }
    } else {
        return FUNC1(adc_reading, chars->coeff_a, chars->coeff_b);
    }
}