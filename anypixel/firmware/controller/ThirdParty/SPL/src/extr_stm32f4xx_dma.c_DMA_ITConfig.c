
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int FCR; int CR; } ;
typedef scalar_t__ FunctionalState ;
typedef TYPE_1__ DMA_Stream_TypeDef ;


 scalar_t__ DISABLE ;
 int DMA_IT_FE ;
 int IS_DMA_ALL_PERIPH (TYPE_1__*) ;
 int IS_DMA_CONFIG_IT (int) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int TRANSFER_IT_ENABLE_MASK ;
 int assert_param (int ) ;

void DMA_ITConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_IT, FunctionalState NewState)
{

  assert_param(IS_DMA_ALL_PERIPH(DMAy_Streamx));
  assert_param(IS_DMA_CONFIG_IT(DMA_IT));
  assert_param(IS_FUNCTIONAL_STATE(NewState));


  if ((DMA_IT & DMA_IT_FE) != 0)
  {
    if (NewState != DISABLE)
    {

      DMAy_Streamx->FCR |= (uint32_t)DMA_IT_FE;
    }
    else
    {

      DMAy_Streamx->FCR &= ~(uint32_t)DMA_IT_FE;
    }
  }


  if (DMA_IT != DMA_IT_FE)
  {
    if (NewState != DISABLE)
    {

      DMAy_Streamx->CR |= (uint32_t)(DMA_IT & TRANSFER_IT_ENABLE_MASK);
    }
    else
    {

      DMAy_Streamx->CR &= ~(uint32_t)(DMA_IT & TRANSFER_IT_ENABLE_MASK);
    }
  }
}
