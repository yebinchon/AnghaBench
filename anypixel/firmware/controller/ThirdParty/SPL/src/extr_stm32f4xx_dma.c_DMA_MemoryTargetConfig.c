
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ M0AR; scalar_t__ M1AR; } ;
typedef TYPE_1__ DMA_Stream_TypeDef ;


 scalar_t__ DMA_Memory_0 ;
 int IS_DMA_ALL_PERIPH (TYPE_1__*) ;
 int IS_DMA_CURRENT_MEM (scalar_t__) ;
 int assert_param (int ) ;

void DMA_MemoryTargetConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t MemoryBaseAddr,
                           uint32_t DMA_MemoryTarget)
{

  assert_param(IS_DMA_ALL_PERIPH(DMAy_Streamx));
  assert_param(IS_DMA_CURRENT_MEM(DMA_MemoryTarget));


  if (DMA_MemoryTarget != DMA_Memory_0)
  {

    DMAy_Streamx->M1AR = MemoryBaseAddr;
  }
  else
  {

    DMAy_Streamx->M0AR = MemoryBaseAddr;
  }
}
