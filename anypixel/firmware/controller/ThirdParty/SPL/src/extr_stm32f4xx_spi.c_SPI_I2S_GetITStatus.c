
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int CR2; int SR; } ;
typedef TYPE_1__ SPI_TypeDef ;
typedef scalar_t__ ITStatus ;


 int IS_SPI_ALL_PERIPH_EXT (TYPE_1__*) ;
 int IS_SPI_I2S_GET_IT (int) ;
 scalar_t__ RESET ;
 scalar_t__ SET ;
 int assert_param (int ) ;

ITStatus SPI_I2S_GetITStatus(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT)
{
  ITStatus bitstatus = RESET;
  uint16_t itpos = 0, itmask = 0, enablestatus = 0;


  assert_param(IS_SPI_ALL_PERIPH_EXT(SPIx));
  assert_param(IS_SPI_I2S_GET_IT(SPI_I2S_IT));


  itpos = 0x01 << (SPI_I2S_IT & 0x0F);


  itmask = SPI_I2S_IT >> 4;


  itmask = 0x01 << itmask;


  enablestatus = (SPIx->CR2 & itmask) ;


  if (((SPIx->SR & itpos) != (uint16_t)RESET) && enablestatus)
  {

    bitstatus = SET;
  }
  else
  {

    bitstatus = RESET;
  }

  return bitstatus;
}
