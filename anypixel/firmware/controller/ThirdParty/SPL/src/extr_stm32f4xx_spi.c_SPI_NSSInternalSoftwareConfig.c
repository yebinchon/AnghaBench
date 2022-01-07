
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int CR1; } ;
typedef TYPE_1__ SPI_TypeDef ;


 int IS_SPI_ALL_PERIPH (TYPE_1__*) ;
 int IS_SPI_NSS_INTERNAL (int ) ;
 int SPI_NSSInternalSoft_Reset ;
 int SPI_NSSInternalSoft_Set ;
 int assert_param (int ) ;

void SPI_NSSInternalSoftwareConfig(SPI_TypeDef* SPIx, uint16_t SPI_NSSInternalSoft)
{

  assert_param(IS_SPI_ALL_PERIPH(SPIx));
  assert_param(IS_SPI_NSS_INTERNAL(SPI_NSSInternalSoft));
  if (SPI_NSSInternalSoft != SPI_NSSInternalSoft_Reset)
  {

    SPIx->CR1 |= SPI_NSSInternalSoft_Set;
  }
  else
  {

    SPIx->CR1 &= SPI_NSSInternalSoft_Reset;
  }
}
