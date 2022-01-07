
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int DMA_PeripheralBaseAddr; int DMA_MemoryBaseAddr; int DMA_DIR; int DMA_M2M; int DMA_Priority; int DMA_Mode; int DMA_MemoryDataSize; int DMA_PeripheralDataSize; int DMA_MemoryInc; int DMA_PeripheralInc; int DMA_BufferSize; } ;
typedef TYPE_1__ DMA_InitTypeDef ;


 int DISABLE ;
 int DMA_Cmd (int ,int ) ;
 int DMA_DIR_PeripheralDST ;
 int DMA_DIR_PeripheralSRC ;
 int DMA_Init (int ,TYPE_1__*) ;
 int DMA_M2M_Disable ;
 int DMA_MemoryDataSize_Byte ;
 int DMA_MemoryInc_Enable ;
 int DMA_Mode_Normal ;
 int DMA_PeripheralDataSize_Byte ;
 int DMA_PeripheralInc_Disable ;
 int DMA_Priority_Medium ;
 int ENABLE ;
 int SPI_Cmd (int ,int ) ;
 int SPI_I2S_DMACmd (int ,int,int ) ;
 int SPI_I2S_DMAReq_Rx ;
 int SPI_I2S_DMAReq_Tx ;
 scalar_t__ TLC59401_DMA_DR ;
 int TLC59401_RX_DMA ;
 int TLC59401_SPI ;
 int TLC59401_TX_DMA ;
 int isIdle (int ) ;
 int needLatch0 ;
 int needLatch1 ;

__attribute__((used)) static bool Start_DMA_Transfer(uint8_t* dataOut, uint8_t* dataIn, uint16_t count) {
    DMA_InitTypeDef DMA_InitStruct;

    if( !isIdle(TLC59401_SPI) || needLatch0 || needLatch1)
        return 0;


    SPI_Cmd(TLC59401_SPI, DISABLE);
    DMA_Cmd(TLC59401_TX_DMA, DISABLE);
    DMA_Cmd(TLC59401_RX_DMA, DISABLE);


    DMA_InitStruct.DMA_PeripheralBaseAddr = (int)TLC59401_DMA_DR;
    DMA_InitStruct.DMA_MemoryBaseAddr = (int)dataOut;
    DMA_InitStruct.DMA_DIR = DMA_DIR_PeripheralDST;
    DMA_InitStruct.DMA_BufferSize = count;
    DMA_InitStruct.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
    DMA_InitStruct.DMA_MemoryInc = DMA_MemoryInc_Enable;
    DMA_InitStruct.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
    DMA_InitStruct.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;
    DMA_InitStruct.DMA_Mode = DMA_Mode_Normal;
    DMA_InitStruct.DMA_Priority = DMA_Priority_Medium;
    DMA_InitStruct.DMA_M2M = DMA_M2M_Disable;
    DMA_Init(TLC59401_TX_DMA, &DMA_InitStruct);


    DMA_InitStruct.DMA_MemoryBaseAddr = (int)dataIn;
    DMA_InitStruct.DMA_DIR = DMA_DIR_PeripheralSRC;
    DMA_Init(TLC59401_RX_DMA, &DMA_InitStruct);

    DMA_Cmd(TLC59401_TX_DMA, ENABLE);
    DMA_Cmd(TLC59401_RX_DMA, ENABLE);

    SPI_I2S_DMACmd(TLC59401_SPI,SPI_I2S_DMAReq_Tx | SPI_I2S_DMAReq_Rx, ENABLE);

    SPI_Cmd(TLC59401_SPI, ENABLE);

    needLatch0 = 1;
    needLatch1 = 1;

    return 1;
}
