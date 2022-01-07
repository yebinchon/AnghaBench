
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DMA_PeripheralBurst; int DMA_MemoryBurst; int DMA_FIFOThreshold; int DMA_FIFOMode; int DMA_Priority; int DMA_Mode; int DMA_MemoryDataSize; int DMA_PeripheralDataSize; int DMA_MemoryInc; int DMA_PeripheralInc; scalar_t__ DMA_BufferSize; int DMA_DIR; scalar_t__ DMA_Memory0BaseAddr; scalar_t__ DMA_PeripheralBaseAddr; scalar_t__ DMA_Channel; } ;
typedef TYPE_1__ DMA_InitTypeDef ;


 int DMA_DIR_PeripheralToMemory ;
 int DMA_FIFOMode_Disable ;
 int DMA_FIFOThreshold_1QuarterFull ;
 int DMA_MemoryBurst_Single ;
 int DMA_MemoryDataSize_Byte ;
 int DMA_MemoryInc_Disable ;
 int DMA_Mode_Normal ;
 int DMA_PeripheralBurst_Single ;
 int DMA_PeripheralDataSize_Byte ;
 int DMA_PeripheralInc_Disable ;
 int DMA_Priority_Low ;

void DMA_StructInit(DMA_InitTypeDef* DMA_InitStruct)
{


  DMA_InitStruct->DMA_Channel = 0;


  DMA_InitStruct->DMA_PeripheralBaseAddr = 0;


  DMA_InitStruct->DMA_Memory0BaseAddr = 0;


  DMA_InitStruct->DMA_DIR = DMA_DIR_PeripheralToMemory;


  DMA_InitStruct->DMA_BufferSize = 0;


  DMA_InitStruct->DMA_PeripheralInc = DMA_PeripheralInc_Disable;


  DMA_InitStruct->DMA_MemoryInc = DMA_MemoryInc_Disable;


  DMA_InitStruct->DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;


  DMA_InitStruct->DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;


  DMA_InitStruct->DMA_Mode = DMA_Mode_Normal;


  DMA_InitStruct->DMA_Priority = DMA_Priority_Low;


  DMA_InitStruct->DMA_FIFOMode = DMA_FIFOMode_Disable;


  DMA_InitStruct->DMA_FIFOThreshold = DMA_FIFOThreshold_1QuarterFull;


  DMA_InitStruct->DMA_MemoryBurst = DMA_MemoryBurst_Single;


  DMA_InitStruct->DMA_PeripheralBurst = DMA_PeripheralBurst_Single;
}
