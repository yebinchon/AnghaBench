
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int CR; int FCR; } ;
struct TYPE_8__ {int HISR; int LISR; } ;
typedef scalar_t__ ITStatus ;
typedef TYPE_1__ DMA_TypeDef ;
typedef TYPE_2__ DMA_Stream_TypeDef ;


 TYPE_1__* DMA1 ;
 TYPE_1__* DMA2 ;
 TYPE_2__* DMA2_Stream0 ;
 int DMA_IT_FE ;
 int HIGH_ISR_MASK ;
 int IS_DMA_ALL_PERIPH (TYPE_2__*) ;
 int IS_DMA_GET_IT (int) ;
 scalar_t__ RESERVED_MASK ;
 scalar_t__ RESET ;
 scalar_t__ SET ;
 int TRANSFER_IT_ENABLE_MASK ;
 int TRANSFER_IT_MASK ;
 int assert_param (int ) ;

ITStatus DMA_GetITStatus(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_IT)
{
  ITStatus bitstatus = RESET;
  DMA_TypeDef* DMAy;
  uint32_t tmpreg = 0, enablestatus = 0;


  assert_param(IS_DMA_ALL_PERIPH(DMAy_Streamx));
  assert_param(IS_DMA_GET_IT(DMA_IT));


  if (DMAy_Streamx < DMA2_Stream0)
  {

    DMAy = DMA1;
  }
  else
  {

    DMAy = DMA2;
  }


  if ((DMA_IT & TRANSFER_IT_MASK) != (uint32_t)RESET)
  {

    tmpreg = (uint32_t)((DMA_IT >> 11) & TRANSFER_IT_ENABLE_MASK);


    enablestatus = (uint32_t)(DMAy_Streamx->CR & tmpreg);
  }
  else
  {

    enablestatus = (uint32_t)(DMAy_Streamx->FCR & DMA_IT_FE);
  }


  if ((DMA_IT & HIGH_ISR_MASK) != (uint32_t)RESET)
  {

    tmpreg = DMAy->HISR ;
  }
  else
  {

    tmpreg = DMAy->LISR ;
  }


  tmpreg &= (uint32_t)RESERVED_MASK;


  if (((tmpreg & DMA_IT) != (uint32_t)RESET) && (enablestatus != (uint32_t)RESET))
  {

    bitstatus = SET;
  }
  else
  {

    bitstatus = RESET;
  }


  return bitstatus;
}
