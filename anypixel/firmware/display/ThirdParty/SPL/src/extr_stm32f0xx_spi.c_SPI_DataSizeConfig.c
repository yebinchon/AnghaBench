
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int CR2; } ;
typedef TYPE_1__ SPI_TypeDef ;


 int IS_SPI_ALL_PERIPH (TYPE_1__*) ;
 int IS_SPI_DATA_SIZE (int ) ;
 scalar_t__ SPI_CR2_DS ;
 int assert_param (int ) ;

void SPI_DataSizeConfig(SPI_TypeDef* SPIx, uint16_t SPI_DataSize)
{
  uint16_t tmpreg = 0;


  assert_param(IS_SPI_ALL_PERIPH(SPIx));
  assert_param(IS_SPI_DATA_SIZE(SPI_DataSize));

  tmpreg = SPIx->CR2;

  tmpreg &= (uint16_t)~SPI_CR2_DS;

  tmpreg |= SPI_DataSize;
  SPIx->CR2 = tmpreg;
}
