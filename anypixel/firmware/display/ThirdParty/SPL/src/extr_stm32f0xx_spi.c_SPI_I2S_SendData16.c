
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ DR; } ;
typedef TYPE_1__ SPI_TypeDef ;


 int IS_SPI_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

void SPI_I2S_SendData16(SPI_TypeDef* SPIx, uint16_t Data)
{

  assert_param(IS_SPI_ALL_PERIPH(SPIx));

  SPIx->DR = (uint16_t)Data;
}
