
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uart_port_t ;
typedef int esp_err_t ;
struct TYPE_2__ {int * intr_handle; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int UART_CHECK (int,char*,int ) ;
 int UART_ENTER_CRITICAL (int *) ;
 int UART_EXIT_CRITICAL (int *) ;
 size_t UART_NUM_MAX ;
 int esp_intr_free (int *) ;
 TYPE_1__** p_uart_obj ;
 int * uart_spinlock ;

esp_err_t uart_isr_free(uart_port_t uart_num)
{
    esp_err_t ret;
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    if (p_uart_obj[uart_num]->intr_handle == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    UART_ENTER_CRITICAL(&uart_spinlock[uart_num]);
    ret = esp_intr_free(p_uart_obj[uart_num]->intr_handle);
    p_uart_obj[uart_num]->intr_handle = ((void*)0);
    UART_EXIT_CRITICAL(&uart_spinlock[uart_num]);
    return ret;
}
