
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int CR; } ;
typedef int FunctionalState ;
typedef TYPE_1__ DMA_Stream_TypeDef ;


 int DISABLE ;
 scalar_t__ DMA_SxCR_EN ;
 int ENABLE ;
 int IS_DMA_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

FunctionalState DMA_GetCmdStatus(DMA_Stream_TypeDef* DMAy_Streamx)
{
  FunctionalState state = DISABLE;


  assert_param(IS_DMA_ALL_PERIPH(DMAy_Streamx));

  if ((DMAy_Streamx->CR & (uint32_t)DMA_SxCR_EN) != 0)
  {

    state = ENABLE;
  }
  else
  {


    state = DISABLE;
  }
  return state;
}
