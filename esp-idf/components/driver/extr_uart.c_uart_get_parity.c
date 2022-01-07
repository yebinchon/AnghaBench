
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uart_port_t ;
typedef int uart_parity_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int val; } ;
struct TYPE_4__ {TYPE_1__ conf0; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 TYPE_2__** UART ;
 int UART_CHECK (int,char*,int ) ;
 size_t UART_NUM_MAX ;
 int UART_PARITY_DISABLE ;
 int UART_PARITY_EN_M ;
 int UART_PARITY_EVEN ;
 int UART_PARITY_M ;
 int UART_PARITY_ODD ;

esp_err_t uart_get_parity(uart_port_t uart_num, uart_parity_t *parity_mode)
{
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    int val = UART[uart_num]->conf0.val;
    if (val & UART_PARITY_EN_M) {
        if (val & UART_PARITY_M) {
            (*parity_mode) = UART_PARITY_ODD;
        } else {
            (*parity_mode) = UART_PARITY_EVEN;
        }
    } else {
        (*parity_mode) = UART_PARITY_DISABLE;
    }
    return ESP_OK;
}
