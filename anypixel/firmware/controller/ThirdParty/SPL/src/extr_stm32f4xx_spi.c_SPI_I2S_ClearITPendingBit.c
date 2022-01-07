
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int SR; } ;
typedef TYPE_1__ SPI_TypeDef ;


 int IS_SPI_ALL_PERIPH_EXT (TYPE_1__*) ;
 int IS_SPI_I2S_CLEAR_IT (int) ;
 int assert_param (int ) ;

void SPI_I2S_ClearITPendingBit(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT)
{
  uint16_t itpos = 0;

  assert_param(IS_SPI_ALL_PERIPH_EXT(SPIx));
  assert_param(IS_SPI_I2S_CLEAR_IT(SPI_I2S_IT));


  itpos = 0x01 << (SPI_I2S_IT & 0x0F);


  SPIx->SR = (uint16_t)~itpos;
}
