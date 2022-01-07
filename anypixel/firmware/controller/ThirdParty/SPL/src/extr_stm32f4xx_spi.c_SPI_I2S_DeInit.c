
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SPI_TypeDef ;


 int DISABLE ;
 int ENABLE ;
 int IS_SPI_ALL_PERIPH (int *) ;
 int RCC_APB1PeriphResetCmd (int ,int ) ;
 int RCC_APB1Periph_SPI2 ;
 int RCC_APB1Periph_SPI3 ;
 int RCC_APB2PeriphResetCmd (int ,int ) ;
 int RCC_APB2Periph_SPI1 ;
 int * SPI1 ;
 int * SPI2 ;
 int * SPI3 ;
 int assert_param (int ) ;

void SPI_I2S_DeInit(SPI_TypeDef* SPIx)
{

  assert_param(IS_SPI_ALL_PERIPH(SPIx));

  if (SPIx == SPI1)
  {

    RCC_APB2PeriphResetCmd(RCC_APB2Periph_SPI1, ENABLE);

    RCC_APB2PeriphResetCmd(RCC_APB2Periph_SPI1, DISABLE);
  }
  else if (SPIx == SPI2)
  {

    RCC_APB1PeriphResetCmd(RCC_APB1Periph_SPI2, ENABLE);

    RCC_APB1PeriphResetCmd(RCC_APB1Periph_SPI2, DISABLE);
    }
  else
  {
    if (SPIx == SPI3)
    {

      RCC_APB1PeriphResetCmd(RCC_APB1Periph_SPI3, ENABLE);

      RCC_APB1PeriphResetCmd(RCC_APB1Periph_SPI3, DISABLE);
    }
  }
}
