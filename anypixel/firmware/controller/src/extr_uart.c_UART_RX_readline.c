
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int configured; int rx_fifo; } ;
typedef TYPE_1__ CONFIG_USART_ConfigState ;


 scalar_t__ FIFO_available (int ) ;
 char FIFO_peek (int ) ;
 int FIFO_read_until (int ,int *,int,char*,int) ;
 int UART_RX_read (TYPE_1__*,char*,int) ;
 int assert (int) ;

uint16_t UART_RX_readline(CONFIG_USART_ConfigState *cfg, char *outBuffer, uint16_t max) {
 int retval;

 assert(cfg->configured == 1);

 retval = FIFO_read_until(cfg->rx_fifo, (uint8_t*)outBuffer, max-1, "\r\n", 2);
 if(retval == 0)
     return 0;

 if(outBuffer[retval-1] == '\r') {
  retval--;

  if( FIFO_available(cfg->rx_fifo) && FIFO_peek(cfg->rx_fifo) == '\n' ) {

   char buf[2];
   UART_RX_read(cfg, buf, 1);
  }
 }
 if(outBuffer[retval-1] == '\n')
  retval--;
    outBuffer[retval++] = 0;
 return retval;
}
