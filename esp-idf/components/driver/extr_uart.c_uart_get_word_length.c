
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uart_word_length_t ;
typedef size_t uart_port_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int bit_num; } ;
struct TYPE_4__ {TYPE_1__ conf0; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 TYPE_2__** UART ;
 int UART_CHECK (int,char*,int ) ;
 size_t UART_NUM_MAX ;

esp_err_t uart_get_word_length(uart_port_t uart_num, uart_word_length_t *data_bit)
{
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    *(data_bit) = UART[uart_num]->conf0.bit_num;
    return ESP_OK;
}
