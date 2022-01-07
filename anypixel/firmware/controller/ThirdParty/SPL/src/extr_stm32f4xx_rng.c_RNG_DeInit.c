
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISABLE ;
 int ENABLE ;
 int RCC_AHB2PeriphResetCmd (int ,int ) ;
 int RCC_AHB2Periph_RNG ;

void RNG_DeInit(void)
{

  RCC_AHB2PeriphResetCmd(RCC_AHB2Periph_RNG, ENABLE);


  RCC_AHB2PeriphResetCmd(RCC_AHB2Periph_RNG, DISABLE);
}
