
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISABLE ;
 int ENABLE ;
 int RCC_APB2PeriphResetCmd (int ,int ) ;
 int RCC_APB2Periph_SDIO ;

void SDIO_DeInit(void)
{
  RCC_APB2PeriphResetCmd(RCC_APB2Periph_SDIO, ENABLE);
  RCC_APB2PeriphResetCmd(RCC_APB2Periph_SDIO, DISABLE);
}
