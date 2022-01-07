
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uart_stop_bits_t ;
typedef size_t uart_port_t ;
typedef int esp_err_t ;
struct TYPE_4__ {scalar_t__ stop_bit_num; } ;
struct TYPE_5__ {int dl1_en; } ;
struct TYPE_6__ {TYPE_1__ conf0; TYPE_2__ rs485_conf; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 TYPE_3__** UART ;
 int UART_CHECK (int,char*,int ) ;
 int UART_ENTER_CRITICAL (int *) ;
 int UART_EXIT_CRITICAL (int *) ;
 size_t UART_NUM_MAX ;
 scalar_t__ UART_STOP_BITS_1 ;
 scalar_t__ UART_STOP_BITS_2 ;
 scalar_t__ UART_STOP_BITS_MAX ;
 int * uart_spinlock ;

esp_err_t uart_set_stop_bits(uart_port_t uart_num, uart_stop_bits_t stop_bit)
{
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    UART_CHECK((stop_bit < UART_STOP_BITS_MAX), "stop bit error", ESP_FAIL);

    UART_ENTER_CRITICAL(&uart_spinlock[uart_num]);
    UART[uart_num]->conf0.stop_bit_num = stop_bit;
    UART_EXIT_CRITICAL(&uart_spinlock[uart_num]);
    return ESP_OK;
}
