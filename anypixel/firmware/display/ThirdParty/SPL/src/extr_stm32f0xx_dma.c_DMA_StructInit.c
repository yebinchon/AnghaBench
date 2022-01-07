
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DMA_M2M; int DMA_Priority; int DMA_Mode; int DMA_MemoryDataSize; int DMA_PeripheralDataSize; int DMA_MemoryInc; int DMA_PeripheralInc; scalar_t__ DMA_BufferSize; int DMA_DIR; scalar_t__ DMA_MemoryBaseAddr; scalar_t__ DMA_PeripheralBaseAddr; } ;
typedef TYPE_1__ DMA_InitTypeDef ;


 int DMA_DIR_PeripheralSRC ;
 int DMA_M2M_Disable ;
 int DMA_MemoryDataSize_Byte ;
 int DMA_MemoryInc_Disable ;
 int DMA_Mode_Normal ;
 int DMA_PeripheralDataSize_Byte ;
 int DMA_PeripheralInc_Disable ;
 int DMA_Priority_Low ;

void DMA_StructInit(DMA_InitTypeDef* DMA_InitStruct)
{


  DMA_InitStruct->DMA_PeripheralBaseAddr = 0;

  DMA_InitStruct->DMA_MemoryBaseAddr = 0;

  DMA_InitStruct->DMA_DIR = DMA_DIR_PeripheralSRC;

  DMA_InitStruct->DMA_BufferSize = 0;

  DMA_InitStruct->DMA_PeripheralInc = DMA_PeripheralInc_Disable;

  DMA_InitStruct->DMA_MemoryInc = DMA_MemoryInc_Disable;

  DMA_InitStruct->DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;

  DMA_InitStruct->DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;

  DMA_InitStruct->DMA_Mode = DMA_Mode_Normal;

  DMA_InitStruct->DMA_Priority = DMA_Priority_Low;

  DMA_InitStruct->DMA_M2M = DMA_M2M_Disable;
}
