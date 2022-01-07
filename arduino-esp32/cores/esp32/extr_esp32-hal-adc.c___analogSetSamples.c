
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int SENS_SAR1_SAMPLE_NUM ;
 int SENS_SAR1_SAMPLE_NUM_S ;
 int SENS_SAR2_SAMPLE_NUM ;
 int SENS_SAR2_SAMPLE_NUM_S ;
 int SENS_SAR_READ_CTRL2_REG ;
 int SENS_SAR_READ_CTRL_REG ;
 int SET_PERI_REG_BITS (int ,int ,scalar_t__,int ) ;
 scalar_t__ __analogSamples ;

void __analogSetSamples(uint8_t samples){
    if(!samples){
        return;
    }
    __analogSamples = samples - 1;
    SET_PERI_REG_BITS(SENS_SAR_READ_CTRL_REG, SENS_SAR1_SAMPLE_NUM, __analogSamples, SENS_SAR1_SAMPLE_NUM_S);
    SET_PERI_REG_BITS(SENS_SAR_READ_CTRL2_REG, SENS_SAR2_SAMPLE_NUM, __analogSamples, SENS_SAR2_SAMPLE_NUM_S);
}
