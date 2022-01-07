
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int CR1; } ;
typedef TYPE_1__ SPI_TypeDef ;


 int IS_SPI_ALL_PERIPH (TYPE_1__*) ;
 int SPI_CR1_CRCNEXT ;
 int assert_param (int ) ;

void SPI_TransmitCRC(SPI_TypeDef* SPIx)
{

  assert_param(IS_SPI_ALL_PERIPH(SPIx));


  SPIx->CR1 |= SPI_CR1_CRCNEXT;
}
