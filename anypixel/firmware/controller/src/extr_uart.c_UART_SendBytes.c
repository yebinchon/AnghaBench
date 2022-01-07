
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int configured; int tx_buf_size; int TX_active; char* tx_buf; int DMA_stream; int USARTx; int DR_ADDR; int DMA_channel; int DMA_IntFlags; } ;
struct TYPE_5__ {int DMA_BufferSize; int DMA_PeripheralBurst; int DMA_MemoryBurst; int DMA_FIFOThreshold; int DMA_FIFOMode; int DMA_Priority; int DMA_Mode; int DMA_MemoryDataSize; int DMA_PeripheralDataSize; int DMA_MemoryInc; int DMA_PeripheralInc; int DMA_DIR; scalar_t__ DMA_Memory0BaseAddr; int DMA_PeripheralBaseAddr; int DMA_Channel; } ;
typedef TYPE_1__ DMA_InitTypeDef ;
typedef TYPE_2__ CONFIG_USART_ConfigState ;


 int DEBUGPIN_CLR (int) ;
 int DEBUGPIN_SET (int) ;
 int DEBUGPIN_TGL (int) ;
 int DMA_ClearITPendingBit (int ,int ) ;
 int DMA_Cmd (int ,int ) ;
 int DMA_DIR_MemoryToPeripheral ;
 int DMA_DeInit (int ) ;
 int DMA_FIFOMode_Disable ;
 int DMA_FIFOThreshold_3QuartersFull ;
 int DMA_Init (int ,TYPE_1__*) ;
 int DMA_MemoryBurst_Single ;
 int DMA_MemoryDataSize_Byte ;
 int DMA_MemoryInc_Enable ;
 int DMA_Mode_Normal ;
 int DMA_PeripheralBurst_Single ;
 int DMA_PeripheralDataSize_Byte ;
 int DMA_PeripheralInc_Disable ;
 int DMA_Priority_VeryHigh ;
 int ENABLE ;
 int USART_ClearFlag (int ,int ) ;
 int USART_DMACmd (int ,int ,int ) ;
 int USART_DMAReq_Tx ;
 int USART_FLAG_TC ;
 int USART_ITConfig (int ,int ,int ) ;
 int USART_IT_TC ;
 int assert (int) ;

bool UART_SendBytes(CONFIG_USART_ConfigState *cfg, const char *buf, uint16_t length) {
 DMA_InitTypeDef DMA_InitStructure;
 int i;

 assert(cfg->configured == 1);
 assert(buf != ((void*)0));
 assert(length <= cfg->tx_buf_size);

    DEBUGPIN_SET(2);

 if(cfg->TX_active) {
        DEBUGPIN_CLR(2);
        DEBUGPIN_TGL(9);
  return 0;
 }

 for(i = 0; i < length; i++)
  cfg->tx_buf[i] = buf[i];



 USART_ClearFlag(cfg->USARTx, USART_FLAG_TC);
 USART_ITConfig(cfg->USARTx, USART_IT_TC, ENABLE);
 DMA_ClearITPendingBit(cfg->DMA_stream, cfg->DMA_IntFlags);


    DMA_DeInit(cfg->DMA_stream);
 DMA_InitStructure.DMA_Channel = cfg->DMA_channel;
 DMA_InitStructure.DMA_PeripheralBaseAddr = cfg->DR_ADDR;
 DMA_InitStructure.DMA_Memory0BaseAddr = (uint32_t)cfg->tx_buf;
 DMA_InitStructure.DMA_DIR = DMA_DIR_MemoryToPeripheral;
 DMA_InitStructure.DMA_BufferSize = length;
    DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
    DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;
    DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
    DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;
    DMA_InitStructure.DMA_Mode = DMA_Mode_Normal;
    DMA_InitStructure.DMA_Priority = DMA_Priority_VeryHigh;
    DMA_InitStructure.DMA_FIFOMode = DMA_FIFOMode_Disable;
    DMA_InitStructure.DMA_FIFOThreshold = DMA_FIFOThreshold_3QuartersFull;
    DMA_InitStructure.DMA_MemoryBurst = DMA_MemoryBurst_Single;
    DMA_InitStructure.DMA_PeripheralBurst = DMA_PeripheralBurst_Single;
 DMA_Init(cfg->DMA_stream, &DMA_InitStructure);


 USART_DMACmd(cfg->USARTx, USART_DMAReq_Tx, ENABLE);
 DMA_Cmd(cfg->DMA_stream, ENABLE);

    cfg->TX_active = 1;

    DEBUGPIN_CLR(2);
 return 1;
}
