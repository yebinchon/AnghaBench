
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ CR2; } ;
typedef TYPE_1__ SPI_TypeDef ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int IS_SPI_ALL_PERIPH (TYPE_1__*) ;
 scalar_t__ SPI_CR2_SSOE ;
 int assert_param (int ) ;

void SPI_SSOutputCmd(SPI_TypeDef* SPIx, FunctionalState NewState)
{

  assert_param(IS_SPI_ALL_PERIPH(SPIx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));
  if (NewState != DISABLE)
  {

    SPIx->CR2 |= (uint16_t)SPI_CR2_SSOE;
  }
  else
  {

    SPIx->CR2 &= (uint16_t)~((uint16_t)SPI_CR2_SSOE);
  }
}
