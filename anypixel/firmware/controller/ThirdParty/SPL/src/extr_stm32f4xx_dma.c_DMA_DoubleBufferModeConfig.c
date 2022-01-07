
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ CR; scalar_t__ M1AR; } ;
typedef TYPE_1__ DMA_Stream_TypeDef ;


 scalar_t__ DMA_Memory_0 ;
 scalar_t__ DMA_SxCR_CT ;
 int IS_DMA_ALL_PERIPH (TYPE_1__*) ;
 int IS_DMA_CURRENT_MEM (scalar_t__) ;
 int assert_param (int ) ;

void DMA_DoubleBufferModeConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t Memory1BaseAddr,
                                uint32_t DMA_CurrentMemory)
{

  assert_param(IS_DMA_ALL_PERIPH(DMAy_Streamx));
  assert_param(IS_DMA_CURRENT_MEM(DMA_CurrentMemory));

  if (DMA_CurrentMemory != DMA_Memory_0)
  {

    DMAy_Streamx->CR |= (uint32_t)(DMA_SxCR_CT);
  }
  else
  {

    DMAy_Streamx->CR &= ~(uint32_t)(DMA_SxCR_CT);
  }


  DMAy_Streamx->M1AR = Memory1BaseAddr;
}
