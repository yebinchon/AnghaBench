
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rw_byte; } ;
struct TYPE_5__ {scalar_t__ rxfifo_cnt; } ;
struct TYPE_7__ {TYPE_2__ fifo; TYPE_1__ status; } ;
typedef TYPE_3__ uart_dev_t ;
struct TYPE_8__ {TYPE_3__* uart; } ;


 int NONE ;
 int READ_PERI_REG (int ) ;
 int UART_FIFO_AHB_REG (int) ;
 TYPE_4__** s_ctx ;

__attribute__((used)) static int uart_rx_char(int fd)
{
    uart_dev_t* uart = s_ctx[fd]->uart;
    if (uart->status.rxfifo_cnt == 0) {
        return NONE;
    }





}
