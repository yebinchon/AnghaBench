
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int CR2; } ;
typedef TYPE_1__ SPI_TypeDef ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int IS_SPI_ALL_PERIPH_EXT (TYPE_1__*) ;
 int IS_SPI_I2S_CONFIG_IT (int) ;
 int assert_param (int ) ;

void SPI_I2S_ITConfig(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT, FunctionalState NewState)
{
  uint16_t itpos = 0, itmask = 0 ;


  assert_param(IS_SPI_ALL_PERIPH_EXT(SPIx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));
  assert_param(IS_SPI_I2S_CONFIG_IT(SPI_I2S_IT));


  itpos = SPI_I2S_IT >> 4;


  itmask = (uint16_t)1 << (uint16_t)itpos;

  if (NewState != DISABLE)
  {

    SPIx->CR2 |= itmask;
  }
  else
  {

    SPIx->CR2 &= (uint16_t)~itmask;
  }
}
