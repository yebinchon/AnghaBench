
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISABLE ;
 int ENABLE ;
 int RCC_APB1PeriphResetCmd (int ,int ) ;
 int RCC_APB1Periph_CEC ;

void CEC_DeInit(void)
{
  RCC_APB1PeriphResetCmd(RCC_APB1Periph_CEC, ENABLE);
  RCC_APB1PeriphResetCmd(RCC_APB1Periph_CEC, DISABLE);
}
