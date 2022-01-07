
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int configured; int frame_available; int rx_fifo; } ;
typedef TYPE_1__ CONFIG_USART_ConfigState ;


 int FIFO_read (int ,int *,scalar_t__) ;
 scalar_t__ __LDREXH (int *) ;
 scalar_t__ __STREXH (scalar_t__,int *) ;
 int assert (int) ;

bool UART_RX_read(CONFIG_USART_ConfigState *cfg, char *outBuffer, uint16_t count) {
 bool retval;
 uint16_t workAvail;

 assert(cfg->configured == 1);

    retval = FIFO_read(cfg->rx_fifo, (uint8_t*)outBuffer, count);
 if(retval) {




        do {
            workAvail = __LDREXH(&cfg->frame_available);
            if(workAvail < count)
                workAvail = 0;
            else
                workAvail -= count;
        } while( __STREXH(workAvail, &cfg->frame_available));


 }
 return retval;
}
