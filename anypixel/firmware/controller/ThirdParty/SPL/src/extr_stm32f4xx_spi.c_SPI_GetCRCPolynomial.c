
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int CRCPR; } ;
typedef TYPE_1__ SPI_TypeDef ;


 int IS_SPI_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint16_t SPI_GetCRCPolynomial(SPI_TypeDef* SPIx)
{

  assert_param(IS_SPI_ALL_PERIPH(SPIx));


  return SPIx->CRCPR;
}
