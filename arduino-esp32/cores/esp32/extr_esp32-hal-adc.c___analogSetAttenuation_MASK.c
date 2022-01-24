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
typedef  int adc_attenuation_t ;

/* Variables and functions */
 int /*<<< orphan*/  SENS_SAR_ATTEN1_REG ; 
 int /*<<< orphan*/  SENS_SAR_ATTEN2_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int __analogAttenuation ; 

void FUNC1(adc_attenuation_t attenuation)
{
    __analogAttenuation = attenuation & 3;
    uint32_t att_data = 0;
    int i = 10;
    while(i--){
        att_data |= __analogAttenuation << (i * 2);
    }
    FUNC0(SENS_SAR_ATTEN1_REG, att_data & 0xFFFF);//ADC1 has 8 channels
    FUNC0(SENS_SAR_ATTEN2_REG, att_data);
}