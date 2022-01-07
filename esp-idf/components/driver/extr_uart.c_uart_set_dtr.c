
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uart_port_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int sw_dtr; } ;
struct TYPE_4__ {TYPE_1__ conf0; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 TYPE_2__** UART ;
 int UART_CHECK (int,char*,int ) ;
 int UART_ENTER_CRITICAL (int *) ;
 int UART_EXIT_CRITICAL (int *) ;
 size_t UART_NUM_MAX ;
 int * uart_spinlock ;

esp_err_t uart_set_dtr(uart_port_t uart_num, int level)
{
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    UART_ENTER_CRITICAL(&uart_spinlock[uart_num]);
    UART[uart_num]->conf0.sw_dtr = level & 0x1;
    UART_EXIT_CRITICAL(&uart_spinlock[uart_num]);
    return ESP_OK;
}
