
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int CR; } ;
typedef scalar_t__ FunctionalState ;
typedef TYPE_1__ DMA_Stream_TypeDef ;


 scalar_t__ DISABLE ;
 scalar_t__ DMA_SxCR_EN ;
 int IS_DMA_ALL_PERIPH (TYPE_1__*) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void DMA_Cmd(DMA_Stream_TypeDef* DMAy_Streamx, FunctionalState NewState)
{

  assert_param(IS_DMA_ALL_PERIPH(DMAy_Streamx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    DMAy_Streamx->CR |= (uint32_t)DMA_SxCR_EN;
  }
  else
  {

    DMAy_Streamx->CR &= ~(uint32_t)DMA_SxCR_EN;
  }
}
