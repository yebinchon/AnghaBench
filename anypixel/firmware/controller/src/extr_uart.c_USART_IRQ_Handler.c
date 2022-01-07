
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_7__ {int SR; int DR; } ;
struct TYPE_6__ {int configured; int TX_active; TYPE_2__* USARTx; int rx_fifo; int frame_available; int DMA_stream; } ;
typedef TYPE_1__ CONFIG_USART_ConfigState ;


 int DEBUGPIN_CLR (int) ;
 int DEBUGPIN_SET (int) ;
 int DEBUGPIN_TGL (int) ;
 int DISABLE ;
 int DMA_Cmd (int ,int ) ;
 int DMA_DeInit (int ) ;
 int FIFO_available (int ) ;
 int FIFO_write (int ,int ) ;
 int USART_DMACmd (TYPE_2__*,int ,int ) ;
 int USART_DMAReq_Tx ;
 int USART_FLAG_IDLE ;
 int USART_FLAG_RXNE ;
 int USART_FLAG_TC ;
 int USART_ITConfig (TYPE_2__*,int ,int ) ;
 int USART_IT_TC ;
 int USART_ReceiveData (TYPE_2__*) ;
 int assert (int) ;

void USART_IRQ_Handler(CONFIG_USART_ConfigState *cfg) {
 uint8_t workByte;
 uint16_t status = cfg->USARTx->SR;

 assert(cfg->configured == 1);
    DEBUGPIN_SET(3);
 if(status & USART_FLAG_RXNE) {
        DEBUGPIN_TGL(4);


  workByte = cfg->USARTx->DR;

  FIFO_write(cfg->rx_fifo, workByte);
 }
 if( (cfg->TX_active) && (status & USART_FLAG_TC) ) {
        DEBUGPIN_TGL(5);

  USART_ITConfig(cfg->USARTx, USART_IT_TC, DISABLE);


  DMA_Cmd(cfg->DMA_stream, DISABLE);
  DMA_DeInit(cfg->DMA_stream);
  USART_DMACmd(cfg->USARTx, USART_DMAReq_Tx, DISABLE);
  cfg->TX_active = 0;
 }
    if(status & USART_FLAG_IDLE) {
        DEBUGPIN_TGL(6);

        cfg->frame_available = FIFO_available(cfg->rx_fifo);

        workByte = USART_ReceiveData(cfg->USARTx);
 }
 DEBUGPIN_CLR(3);
}
