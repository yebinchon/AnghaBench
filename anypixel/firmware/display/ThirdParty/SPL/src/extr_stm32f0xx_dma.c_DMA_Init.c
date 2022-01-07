
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int CCR; int CMAR; int CPAR; int CNDTR; } ;
struct TYPE_6__ {int DMA_DIR; int DMA_PeripheralInc; int DMA_MemoryInc; int DMA_PeripheralDataSize; int DMA_MemoryDataSize; int DMA_Mode; int DMA_Priority; int DMA_M2M; int DMA_MemoryBaseAddr; int DMA_PeripheralBaseAddr; int DMA_BufferSize; } ;
typedef TYPE_1__ DMA_InitTypeDef ;
typedef TYPE_2__ DMA_Channel_TypeDef ;


 int CCR_CLEAR_MASK ;
 int IS_DMA_ALL_PERIPH (TYPE_2__*) ;
 int IS_DMA_BUFFER_SIZE (int ) ;
 int IS_DMA_DIR (int) ;
 int IS_DMA_M2M_STATE (int) ;
 int IS_DMA_MEMORY_DATA_SIZE (int) ;
 int IS_DMA_MEMORY_INC_STATE (int) ;
 int IS_DMA_MODE (int) ;
 int IS_DMA_PERIPHERAL_DATA_SIZE (int) ;
 int IS_DMA_PERIPHERAL_INC_STATE (int) ;
 int IS_DMA_PRIORITY (int) ;
 int assert_param (int ) ;

void DMA_Init(DMA_Channel_TypeDef* DMAy_Channelx, DMA_InitTypeDef* DMA_InitStruct)
{
  uint32_t tmpreg = 0;


  assert_param(IS_DMA_ALL_PERIPH(DMAy_Channelx));
  assert_param(IS_DMA_DIR(DMA_InitStruct->DMA_DIR));
  assert_param(IS_DMA_BUFFER_SIZE(DMA_InitStruct->DMA_BufferSize));
  assert_param(IS_DMA_PERIPHERAL_INC_STATE(DMA_InitStruct->DMA_PeripheralInc));
  assert_param(IS_DMA_MEMORY_INC_STATE(DMA_InitStruct->DMA_MemoryInc));
  assert_param(IS_DMA_PERIPHERAL_DATA_SIZE(DMA_InitStruct->DMA_PeripheralDataSize));
  assert_param(IS_DMA_MEMORY_DATA_SIZE(DMA_InitStruct->DMA_MemoryDataSize));
  assert_param(IS_DMA_MODE(DMA_InitStruct->DMA_Mode));
  assert_param(IS_DMA_PRIORITY(DMA_InitStruct->DMA_Priority));
  assert_param(IS_DMA_M2M_STATE(DMA_InitStruct->DMA_M2M));



  tmpreg = DMAy_Channelx->CCR;


  tmpreg &= CCR_CLEAR_MASK;
  tmpreg |= DMA_InitStruct->DMA_DIR | DMA_InitStruct->DMA_Mode |
            DMA_InitStruct->DMA_PeripheralInc | DMA_InitStruct->DMA_MemoryInc |
            DMA_InitStruct->DMA_PeripheralDataSize | DMA_InitStruct->DMA_MemoryDataSize |
            DMA_InitStruct->DMA_Priority | DMA_InitStruct->DMA_M2M;


  DMAy_Channelx->CCR = tmpreg;



  DMAy_Channelx->CNDTR = DMA_InitStruct->DMA_BufferSize;



  DMAy_Channelx->CPAR = DMA_InitStruct->DMA_PeripheralBaseAddr;



  DMAy_Channelx->CMAR = DMA_InitStruct->DMA_MemoryBaseAddr;
}
