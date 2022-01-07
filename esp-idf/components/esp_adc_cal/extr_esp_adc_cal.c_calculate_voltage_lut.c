
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int LUT_ADC_STEP_SIZE ;
 int LUT_LOW_THRESH ;
 int LUT_VREF_HIGH ;
 int LUT_VREF_LOW ;

__attribute__((used)) static uint32_t calculate_voltage_lut(uint32_t adc, uint32_t vref, const uint32_t *low_vref_curve, const uint32_t *high_vref_curve)
{

    uint32_t i = (adc - LUT_LOW_THRESH) / LUT_ADC_STEP_SIZE;


    int x2dist = LUT_VREF_HIGH - vref;
    int x1dist = vref - LUT_VREF_LOW;
    int y2dist = ((i + 1) * LUT_ADC_STEP_SIZE) + LUT_LOW_THRESH - adc;
    int y1dist = adc - ((i * LUT_ADC_STEP_SIZE) + LUT_LOW_THRESH);


    int q11 = low_vref_curve[i];
    int q12 = low_vref_curve[i + 1];
    int q21 = high_vref_curve[i];
    int q22 = high_vref_curve[i + 1];



    int voltage = (q11 * x2dist * y2dist) + (q21 * x1dist * y2dist) + (q12 * x2dist * y1dist) + (q22 * x1dist * y1dist);
    voltage += ((LUT_VREF_HIGH - LUT_VREF_LOW) * LUT_ADC_STEP_SIZE) / 2;
    voltage /= ((LUT_VREF_HIGH - LUT_VREF_LOW) * LUT_ADC_STEP_SIZE);
    return (uint32_t)voltage;
}
