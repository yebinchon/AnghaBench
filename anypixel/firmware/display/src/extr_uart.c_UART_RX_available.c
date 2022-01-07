
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int configured; int rx_fifo; } ;
typedef TYPE_1__ CONFIG_USART_ConfigState ;


 int FIFO_available (int ) ;
 int assert (int) ;

uint16_t UART_RX_available(CONFIG_USART_ConfigState *cfg) {
 assert(cfg->configured == 1);

 return FIFO_available(cfg->rx_fifo);
}
