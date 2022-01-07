
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int HISR; int LISR; } ;
typedef scalar_t__ FlagStatus ;
typedef TYPE_1__ DMA_TypeDef ;
typedef int DMA_Stream_TypeDef ;


 TYPE_1__* DMA1 ;
 TYPE_1__* DMA2 ;
 int * DMA2_Stream0 ;
 int HIGH_ISR_MASK ;
 int IS_DMA_ALL_PERIPH (int *) ;
 int IS_DMA_GET_FLAG (int) ;
 scalar_t__ RESERVED_MASK ;
 scalar_t__ RESET ;
 scalar_t__ SET ;
 int assert_param (int ) ;

FlagStatus DMA_GetFlagStatus(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_FLAG)
{
  FlagStatus bitstatus = RESET;
  DMA_TypeDef* DMAy;
  uint32_t tmpreg = 0;


  assert_param(IS_DMA_ALL_PERIPH(DMAy_Streamx));
  assert_param(IS_DMA_GET_FLAG(DMA_FLAG));


  if (DMAy_Streamx < DMA2_Stream0)
  {

    DMAy = DMA1;
  }
  else
  {

    DMAy = DMA2;
  }


  if ((DMA_FLAG & HIGH_ISR_MASK) != (uint32_t)RESET)
  {

    tmpreg = DMAy->HISR;
  }
  else
  {

    tmpreg = DMAy->LISR;
  }


  tmpreg &= (uint32_t)RESERVED_MASK;


  if ((tmpreg & DMA_FLAG) != (uint32_t)RESET)
  {

    bitstatus = SET;
  }
  else
  {

    bitstatus = RESET;
  }


  return bitstatus;
}
