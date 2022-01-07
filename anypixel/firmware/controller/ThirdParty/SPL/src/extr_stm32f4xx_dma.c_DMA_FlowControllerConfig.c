
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ CR; } ;
typedef TYPE_1__ DMA_Stream_TypeDef ;


 scalar_t__ DMA_FlowCtrl_Memory ;
 scalar_t__ DMA_SxCR_PFCTRL ;
 int IS_DMA_ALL_PERIPH (TYPE_1__*) ;
 int IS_DMA_FLOW_CTRL (scalar_t__) ;
 int assert_param (int ) ;

void DMA_FlowControllerConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_FlowCtrl)
{

  assert_param(IS_DMA_ALL_PERIPH(DMAy_Streamx));
  assert_param(IS_DMA_FLOW_CTRL(DMA_FlowCtrl));


  if(DMA_FlowCtrl != DMA_FlowCtrl_Memory)
  {

    DMAy_Streamx->CR |= (uint32_t)DMA_SxCR_PFCTRL;
  }
  else
  {

    DMAy_Streamx->CR &= ~(uint32_t)DMA_SxCR_PFCTRL;
  }
}
