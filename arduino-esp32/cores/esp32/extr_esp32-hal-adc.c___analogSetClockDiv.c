
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int SENS_SAR1_CLK_DIV ;
 int SENS_SAR1_CLK_DIV_S ;
 int SENS_SAR2_CLK_DIV ;
 int SENS_SAR2_CLK_DIV_S ;
 int SENS_SAR_READ_CTRL2_REG ;
 int SENS_SAR_READ_CTRL_REG ;
 int SET_PERI_REG_BITS (int ,int ,scalar_t__,int ) ;
 scalar_t__ __analogClockDiv ;

void __analogSetClockDiv(uint8_t clockDiv){
    if(!clockDiv){
        return;
    }
    __analogClockDiv = clockDiv;
    SET_PERI_REG_BITS(SENS_SAR_READ_CTRL_REG, SENS_SAR1_CLK_DIV, __analogClockDiv, SENS_SAR1_CLK_DIV_S);
    SET_PERI_REG_BITS(SENS_SAR_READ_CTRL2_REG, SENS_SAR2_CLK_DIV, __analogClockDiv, SENS_SAR2_CLK_DIV_S);
}
