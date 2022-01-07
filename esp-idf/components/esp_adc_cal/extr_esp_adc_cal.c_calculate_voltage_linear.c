
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int LIN_COEFF_A_ROUND ;
 int LIN_COEFF_A_SCALE ;

__attribute__((used)) static uint32_t calculate_voltage_linear(uint32_t adc_reading, uint32_t coeff_a, uint32_t coeff_b)
{

    return (((coeff_a * adc_reading) + LIN_COEFF_A_ROUND) / LIN_COEFF_A_SCALE) + coeff_b;
}
