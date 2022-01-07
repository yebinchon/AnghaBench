
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int bit_width; scalar_t__ atten; int coeff_b; int coeff_a; int high_curve; int low_curve; int vref; } ;
typedef TYPE_1__ esp_adc_cal_characteristics_t ;


 int ADC_12_BIT_RES ;
 scalar_t__ ADC_ATTEN_DB_11 ;
 int ADC_WIDTH_BIT_12 ;
 int LUT_ADC_STEP_SIZE ;
 scalar_t__ LUT_ENABLED ;
 int LUT_HIGH_THRESH ;
 int LUT_LOW_THRESH ;
 int assert (int ) ;
 int calculate_voltage_linear (int,int ,int ) ;
 int calculate_voltage_lut (int,int ,int ,int ) ;
 int interpolate_two_points (int,int,int ,int) ;

uint32_t esp_adc_cal_raw_to_voltage(uint32_t adc_reading, const esp_adc_cal_characteristics_t *chars)
{
    assert(chars != ((void*)0));


    adc_reading = (adc_reading << (ADC_WIDTH_BIT_12 - chars->bit_width));
    if (adc_reading > ADC_12_BIT_RES - 1) {
        adc_reading = ADC_12_BIT_RES - 1;
    }

    if (LUT_ENABLED && (chars->atten == ADC_ATTEN_DB_11) && (adc_reading >= LUT_LOW_THRESH)) {

        uint32_t lut_voltage = calculate_voltage_lut(adc_reading, chars->vref, chars->low_curve, chars->high_curve);
        if (adc_reading <= LUT_HIGH_THRESH) {

            uint32_t linear_voltage = calculate_voltage_linear(adc_reading, chars->coeff_a, chars->coeff_b);
            return interpolate_two_points(linear_voltage, lut_voltage, LUT_ADC_STEP_SIZE, (adc_reading - LUT_LOW_THRESH));
        } else {
            return lut_voltage;
        }
    } else {
        return calculate_voltage_linear(adc_reading, chars->coeff_a, chars->coeff_b);
    }
}
