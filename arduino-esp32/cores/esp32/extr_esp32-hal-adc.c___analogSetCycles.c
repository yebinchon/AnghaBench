
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int SENS_SAR1_SAMPLE_CYCLE ;
 int SENS_SAR1_SAMPLE_CYCLE_S ;
 int SENS_SAR2_SAMPLE_CYCLE ;
 int SENS_SAR2_SAMPLE_CYCLE_S ;
 int SENS_SAR_READ_CTRL2_REG ;
 int SENS_SAR_READ_CTRL_REG ;
 int SET_PERI_REG_BITS (int ,int ,int ,int ) ;
 int __analogCycles ;

void __analogSetCycles(uint8_t cycles){
    __analogCycles = cycles;
    SET_PERI_REG_BITS(SENS_SAR_READ_CTRL_REG, SENS_SAR1_SAMPLE_CYCLE, __analogCycles, SENS_SAR1_SAMPLE_CYCLE_S);
    SET_PERI_REG_BITS(SENS_SAR_READ_CTRL2_REG, SENS_SAR2_SAMPLE_CYCLE, __analogCycles, SENS_SAR2_SAMPLE_CYCLE_S);
}
