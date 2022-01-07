
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int CCR; } ;
typedef scalar_t__ FunctionalState ;
typedef TYPE_1__ DMA_Channel_TypeDef ;


 scalar_t__ DISABLE ;
 int IS_DMA_ALL_PERIPH (TYPE_1__*) ;
 int IS_DMA_CONFIG_IT (int ) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void DMA_ITConfig(DMA_Channel_TypeDef* DMAy_Channelx, uint32_t DMA_IT, FunctionalState NewState)
{

  assert_param(IS_DMA_ALL_PERIPH(DMAy_Channelx));
  assert_param(IS_DMA_CONFIG_IT(DMA_IT));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    DMAy_Channelx->CCR |= DMA_IT;
  }
  else
  {

    DMAy_Channelx->CCR &= ~DMA_IT;
  }
}
