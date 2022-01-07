
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
struct TYPE_5__ {scalar_t__ stop_bit_num; } ;
struct TYPE_4__ {int dl1_en; } ;
struct TYPE_6__ {TYPE_2__ conf0; TYPE_1__ rs485_conf; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 TYPE_3__** UART ;
 int UART_CHECK (int,char*,int ) ;
 size_t UART_NUM_MAX ;
 scalar_t__ UART_STOP_BITS_1 ;
 scalar_t__ UART_STOP_BITS_2 ;

esp_err_t uart_get_stop_bits(uart_port_t uart_num, uart_stop_bits_t *stop_bit)
{
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    return ESP_OK;
}
