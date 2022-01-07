
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uart_port_t ;
typedef int uart_hw_flowcontrol_t ;
typedef int esp_err_t ;
struct TYPE_5__ {scalar_t__ tx_flow_en; } ;
struct TYPE_4__ {scalar_t__ rx_flow_en; } ;
struct TYPE_6__ {TYPE_2__ conf0; TYPE_1__ conf1; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 TYPE_3__** UART ;
 int UART_CHECK (int,char*,int ) ;
 int UART_HW_FLOWCTRL_CTS ;
 int UART_HW_FLOWCTRL_DISABLE ;
 int UART_HW_FLOWCTRL_RTS ;
 size_t UART_NUM_MAX ;

esp_err_t uart_get_hw_flow_ctrl(uart_port_t uart_num, uart_hw_flowcontrol_t *flow_ctrl)
{
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    uart_hw_flowcontrol_t val = UART_HW_FLOWCTRL_DISABLE;
    if (UART[uart_num]->conf1.rx_flow_en) {
        val |= UART_HW_FLOWCTRL_RTS;
    }
    if (UART[uart_num]->conf0.tx_flow_en) {
        val |= UART_HW_FLOWCTRL_CTS;
    }
    (*flow_ctrl) = val;
    return ESP_OK;
}
