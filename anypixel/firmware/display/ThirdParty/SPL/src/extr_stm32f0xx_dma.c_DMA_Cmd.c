
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ CCR; } ;
typedef scalar_t__ FunctionalState ;
typedef TYPE_1__ DMA_Channel_TypeDef ;


 scalar_t__ DISABLE ;
 scalar_t__ DMA_CCR_EN ;
 int IS_DMA_ALL_PERIPH (TYPE_1__*) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void DMA_Cmd(DMA_Channel_TypeDef* DMAy_Channelx, FunctionalState NewState)
{

  assert_param(IS_DMA_ALL_PERIPH(DMAy_Channelx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    DMAy_Channelx->CCR |= DMA_CCR_EN;
  }
  else
  {

    DMAy_Channelx->CCR &= (uint16_t)(~DMA_CCR_EN);
  }
}
