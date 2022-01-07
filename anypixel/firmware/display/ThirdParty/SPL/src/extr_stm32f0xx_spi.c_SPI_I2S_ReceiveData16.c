
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int DR; } ;
typedef TYPE_1__ SPI_TypeDef ;



uint16_t SPI_I2S_ReceiveData16(SPI_TypeDef* SPIx)
{
  return SPIx->DR;
}
