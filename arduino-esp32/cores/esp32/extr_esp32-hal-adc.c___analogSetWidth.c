
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int SENS_SAR1_BIT_WIDTH ;
 int SENS_SAR1_BIT_WIDTH_S ;
 int SENS_SAR1_SAMPLE_BIT ;
 int SENS_SAR1_SAMPLE_BIT_S ;
 int SENS_SAR2_BIT_WIDTH ;
 int SENS_SAR2_BIT_WIDTH_S ;
 int SENS_SAR2_SAMPLE_BIT ;
 int SENS_SAR2_SAMPLE_BIT_S ;
 int SENS_SAR_READ_CTRL2_REG ;
 int SENS_SAR_READ_CTRL_REG ;
 int SENS_SAR_START_FORCE_REG ;
 int SET_PERI_REG_BITS (int ,int ,int,int ) ;
 int __analogReturnedWidth ;
 int __analogWidth ;

void __analogSetWidth(uint8_t bits){
    if(bits < 9){
        bits = 9;
    } else if(bits > 12){
        bits = 12;
    }
    __analogReturnedWidth = bits;
    __analogWidth = bits - 9;
    SET_PERI_REG_BITS(SENS_SAR_START_FORCE_REG, SENS_SAR1_BIT_WIDTH, __analogWidth, SENS_SAR1_BIT_WIDTH_S);
    SET_PERI_REG_BITS(SENS_SAR_READ_CTRL_REG, SENS_SAR1_SAMPLE_BIT, __analogWidth, SENS_SAR1_SAMPLE_BIT_S);

    SET_PERI_REG_BITS(SENS_SAR_START_FORCE_REG, SENS_SAR2_BIT_WIDTH, __analogWidth, SENS_SAR2_BIT_WIDTH_S);
    SET_PERI_REG_BITS(SENS_SAR_READ_CTRL2_REG, SENS_SAR2_SAMPLE_BIT, __analogWidth, SENS_SAR2_SAMPLE_BIT_S);
}
