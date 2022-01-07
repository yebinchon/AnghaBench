
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int DR; } ;
typedef TYPE_1__ SPI_TypeDef ;


 int IS_SPI_ALL_PERIPH_EXT (TYPE_1__*) ;
 int assert_param (int ) ;

uint16_t SPI_I2S_ReceiveData(SPI_TypeDef* SPIx)
{

  assert_param(IS_SPI_ALL_PERIPH_EXT(SPIx));


  return SPIx->DR;
}
