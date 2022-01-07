
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef size_t uart_port_t ;
typedef int esp_err_t ;
struct TYPE_3__ {scalar_t__ tx_idle_num; } ;
struct TYPE_4__ {TYPE_1__ idle_conf; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 TYPE_2__** UART ;
 int UART_CHECK (int,char*,int ) ;
 int UART_ENTER_CRITICAL (int *) ;
 int UART_EXIT_CRITICAL (int *) ;
 size_t UART_NUM_MAX ;
 scalar_t__ UART_TX_IDLE_NUM_V ;
 int * uart_spinlock ;

esp_err_t uart_set_tx_idle_num(uart_port_t uart_num, uint16_t idle_num)
{
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    UART_CHECK((idle_num <= UART_TX_IDLE_NUM_V), "uart idle num error", ESP_FAIL);

    UART_ENTER_CRITICAL(&uart_spinlock[uart_num]);
    UART[uart_num]->idle_conf.tx_idle_num = idle_num;
    UART_EXIT_CRITICAL(&uart_spinlock[uart_num]);
    return ESP_OK;
}
