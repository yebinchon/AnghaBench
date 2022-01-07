
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int CR; } ;
typedef TYPE_1__ DMA_Stream_TypeDef ;


 int DMA_SxCR_CT ;
 int IS_DMA_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint32_t DMA_GetCurrentMemoryTarget(DMA_Stream_TypeDef* DMAy_Streamx)
{
  uint32_t tmp = 0;


  assert_param(IS_DMA_ALL_PERIPH(DMAy_Streamx));


  if ((DMAy_Streamx->CR & DMA_SxCR_CT) != 0)
  {

    tmp = 1;
  }
  else
  {

    tmp = 0;
  }
  return tmp;
}
