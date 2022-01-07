
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ CR1; } ;
typedef TYPE_1__ SPI_TypeDef ;


 int IS_SPI_ALL_PERIPH (TYPE_1__*) ;
 int IS_SPI_CRC_LENGTH (scalar_t__) ;
 scalar_t__ SPI_CR1_CRCL ;
 int assert_param (int ) ;

void SPI_CRCLengthConfig(SPI_TypeDef* SPIx, uint16_t SPI_CRCLength)
{

  assert_param(IS_SPI_ALL_PERIPH(SPIx));
  assert_param(IS_SPI_CRC_LENGTH(SPI_CRCLength));


  SPIx->CR1 &= (uint16_t)~((uint16_t)SPI_CR1_CRCL);


  SPIx->CR1 |= SPI_CRCLength;
}
