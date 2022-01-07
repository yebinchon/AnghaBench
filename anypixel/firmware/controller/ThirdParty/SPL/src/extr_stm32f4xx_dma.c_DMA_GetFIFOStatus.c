
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int FCR; } ;
typedef TYPE_1__ DMA_Stream_TypeDef ;


 int DMA_SxFCR_FS ;
 int IS_DMA_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint32_t DMA_GetFIFOStatus(DMA_Stream_TypeDef* DMAy_Streamx)
{
  uint32_t tmpreg = 0;


  assert_param(IS_DMA_ALL_PERIPH(DMAy_Streamx));


  tmpreg = (uint32_t)((DMAy_Streamx->FCR & DMA_SxFCR_FS));

  return tmpreg;
}
