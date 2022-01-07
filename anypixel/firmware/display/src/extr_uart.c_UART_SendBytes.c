
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int configured; int tx_buf_size; int TX_active; char* tx_buf; } ;
typedef TYPE_1__ CONFIG_USART_ConfigState ;


 int assert (int) ;
 int memcpy (char*,char const*,int) ;

bool UART_SendBytes(CONFIG_USART_ConfigState *cfg, const char *buf, uint16_t length, bool block) {
 int i;

 assert(cfg->configured == 1);
 assert(buf != ((void*)0));
 assert(length <= cfg->tx_buf_size);

    if(block)
        while(cfg->TX_active);
    else
        if(cfg->TX_active)
            return 0;

 cfg->TX_active = 1;

    memcpy(cfg->tx_buf, buf, length);

 for(i = 0; i < length; i++)
  cfg->tx_buf[i] = buf[i];

    return 1;
}
