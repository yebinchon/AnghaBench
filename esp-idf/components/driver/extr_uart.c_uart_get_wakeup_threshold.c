
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uart_port_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int active_threshold; } ;
struct TYPE_4__ {TYPE_1__ sleep_conf; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_2__** UART ;
 int UART_CHECK (int,char*,int ) ;
 int UART_MIN_WAKEUP_THRESH ;
 size_t UART_NUM_MAX ;

esp_err_t uart_get_wakeup_threshold(uart_port_t uart_num, int *out_wakeup_threshold)
{
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_ERR_INVALID_ARG);
    UART_CHECK((out_wakeup_threshold != ((void*)0)), "argument is NULL", ESP_ERR_INVALID_ARG);

    *out_wakeup_threshold = UART[uart_num]->sleep_conf.active_threshold + UART_MIN_WAKEUP_THRESH;
    return ESP_OK;
}
