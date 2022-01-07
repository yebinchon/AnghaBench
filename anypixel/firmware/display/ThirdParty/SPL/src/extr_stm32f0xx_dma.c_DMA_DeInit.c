
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int uint16_t ;
struct TYPE_13__ {scalar_t__ CMAR; scalar_t__ CPAR; scalar_t__ CNDTR; int CCR; } ;
struct TYPE_12__ {int IFCR; } ;
typedef TYPE_1__ DMA_Channel_TypeDef ;


 TYPE_11__* DMA1 ;
 int DMA1_CHANNEL1_IT_MASK ;
 int DMA1_CHANNEL2_IT_MASK ;
 int DMA1_CHANNEL3_IT_MASK ;
 int DMA1_CHANNEL4_IT_MASK ;
 int DMA1_CHANNEL5_IT_MASK ;
 int DMA1_CHANNEL6_IT_MASK ;
 int DMA1_CHANNEL7_IT_MASK ;
 TYPE_1__* DMA1_Channel1 ;
 TYPE_1__* DMA1_Channel2 ;
 TYPE_1__* DMA1_Channel3 ;
 TYPE_1__* DMA1_Channel4 ;
 TYPE_1__* DMA1_Channel5 ;
 TYPE_1__* DMA1_Channel6 ;
 TYPE_1__* DMA1_Channel7 ;
 scalar_t__ DMA_CCR_EN ;
 int IS_DMA_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

void DMA_DeInit(DMA_Channel_TypeDef* DMAy_Channelx)
{

  assert_param(IS_DMA_ALL_PERIPH(DMAy_Channelx));


  DMAy_Channelx->CCR &= (uint16_t)(~DMA_CCR_EN);


  DMAy_Channelx->CCR = 0;


  DMAy_Channelx->CNDTR = 0;


  DMAy_Channelx->CPAR = 0;


  DMAy_Channelx->CMAR = 0;

  if (DMAy_Channelx == DMA1_Channel1)
  {

    DMA1->IFCR |= DMA1_CHANNEL1_IT_MASK;
  }
  else if (DMAy_Channelx == DMA1_Channel2)
  {

    DMA1->IFCR |= DMA1_CHANNEL2_IT_MASK;
  }
  else if (DMAy_Channelx == DMA1_Channel3)
  {

    DMA1->IFCR |= DMA1_CHANNEL3_IT_MASK;
  }
  else if (DMAy_Channelx == DMA1_Channel4)
  {

    DMA1->IFCR |= DMA1_CHANNEL4_IT_MASK;
  }
  else if (DMAy_Channelx == DMA1_Channel5)
  {

    DMA1->IFCR |= DMA1_CHANNEL5_IT_MASK;
  }
  else if (DMAy_Channelx == DMA1_Channel6)
  {

    DMA1->IFCR |= DMA1_CHANNEL6_IT_MASK;
  }
  else
  {
    if (DMAy_Channelx == DMA1_Channel7)
    {

      DMA1->IFCR |= DMA1_CHANNEL7_IT_MASK;
    }
  }
}
