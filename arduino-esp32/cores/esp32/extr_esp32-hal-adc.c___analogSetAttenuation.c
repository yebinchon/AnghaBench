
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int adc_attenuation_t ;


 int SENS_SAR_ATTEN1_REG ;
 int SENS_SAR_ATTEN2_REG ;
 int WRITE_PERI_REG (int ,int) ;
 int __analogAttenuation ;

void __analogSetAttenuation(adc_attenuation_t attenuation)
{
    __analogAttenuation = attenuation & 3;
    uint32_t att_data = 0;
    int i = 10;
    while(i--){
        att_data |= __analogAttenuation << (i * 2);
    }
    WRITE_PERI_REG(SENS_SAR_ATTEN1_REG, att_data & 0xFFFF);
    WRITE_PERI_REG(SENS_SAR_ATTEN2_REG, att_data);
}
