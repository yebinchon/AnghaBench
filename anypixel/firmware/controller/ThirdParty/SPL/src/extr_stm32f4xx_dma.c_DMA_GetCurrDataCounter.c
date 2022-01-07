
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ NDTR; } ;
typedef TYPE_1__ DMA_Stream_TypeDef ;


 int IS_DMA_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint16_t DMA_GetCurrDataCounter(DMA_Stream_TypeDef* DMAy_Streamx)
{

  assert_param(IS_DMA_ALL_PERIPH(DMAy_Streamx));


  return ((uint16_t)(DMAy_Streamx->NDTR));
}
