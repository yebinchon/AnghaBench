
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uart_port_t ;
typedef int esp_err_t ;
struct TYPE_2__ {int coll_det_flg; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int UART_CHECK (int,char*,int ) ;
 scalar_t__ UART_IS_MODE_SET (size_t,int ) ;
 int UART_MODE_RS485_COLLISION_DETECT ;
 int UART_MODE_RS485_HALF_DUPLEX ;
 size_t UART_NUM_MAX ;
 TYPE_1__** p_uart_obj ;

esp_err_t uart_get_collision_flag(uart_port_t uart_num, bool *collision_flag)
{
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_ERR_INVALID_ARG);
    UART_CHECK((collision_flag != ((void*)0)), "wrong parameter pointer", ESP_ERR_INVALID_ARG);
    UART_CHECK((UART_IS_MODE_SET(uart_num, UART_MODE_RS485_HALF_DUPLEX)
                    || UART_IS_MODE_SET(uart_num, UART_MODE_RS485_COLLISION_DETECT)),
                    "wrong mode", ESP_ERR_INVALID_ARG);
    *collision_flag = p_uart_obj[uart_num]->coll_det_flg;
    return ESP_OK;
}
