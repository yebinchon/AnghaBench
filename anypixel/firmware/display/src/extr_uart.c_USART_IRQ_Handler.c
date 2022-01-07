
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int configured; int TX_active; int USARTx; int rx_fifo; } ;
typedef TYPE_1__ CONFIG_USART_ConfigState ;


 int DISABLE ;
 int FIFO_write (int ,int ) ;
 scalar_t__ RESET ;
 scalar_t__ USART_GetITStatus (int ,int ) ;
 int USART_ITConfig (int ,int ,int ) ;
 int USART_IT_RXNE ;
 int USART_IT_TC ;
 int USART_ReceiveData (int ) ;
 int assert (int) ;

void USART_IRQ_Handler(CONFIG_USART_ConfigState *cfg) {
 uint8_t workByte;

 assert(cfg->configured == 1);

 if(USART_GetITStatus(cfg->USARTx, USART_IT_RXNE) != RESET) {

  workByte = USART_ReceiveData(cfg->USARTx);
  FIFO_write(cfg->rx_fifo, workByte);
 }
 if(USART_GetITStatus(cfg->USARTx, USART_IT_TC) != RESET) {

  USART_ITConfig(cfg->USARTx, USART_IT_TC, DISABLE);

  cfg->TX_active = 0;
 }
}
