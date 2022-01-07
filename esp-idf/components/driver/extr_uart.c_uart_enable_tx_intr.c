
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uart_port_t ;
typedef int esp_err_t ;
struct TYPE_6__ {int txfifo_empty; } ;
struct TYPE_5__ {int txfifo_empty_thrhd; } ;
struct TYPE_7__ {int txfifo_empty; } ;
struct TYPE_8__ {TYPE_2__ int_ena; TYPE_1__ conf1; TYPE_3__ int_clr; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 TYPE_4__** UART ;
 int UART_CHECK (int,char*,int ) ;
 int UART_ENTER_CRITICAL (int *) ;
 int UART_EXIT_CRITICAL (int *) ;
 int UART_FIFO_LEN ;
 size_t UART_NUM_MAX ;
 int UART_TXFIFO_EMPTY_THRHD_V ;
 int * uart_spinlock ;

esp_err_t uart_enable_tx_intr(uart_port_t uart_num, int enable, int thresh)
{
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    UART_CHECK((thresh < UART_FIFO_LEN), "empty intr threshold error", ESP_FAIL);
    UART_ENTER_CRITICAL(&uart_spinlock[uart_num]);
    UART[uart_num]->int_clr.txfifo_empty = 1;
    UART[uart_num]->conf1.txfifo_empty_thrhd = thresh & UART_TXFIFO_EMPTY_THRHD_V;
    UART[uart_num]->int_ena.txfifo_empty = enable & 0x1;
    UART_EXIT_CRITICAL(&uart_spinlock[uart_num]);
    return ESP_OK;
}
