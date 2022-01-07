
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uart_port_t ;
typedef int uart_hw_flowcontrol_t ;
typedef int esp_err_t ;
struct TYPE_7__ {int tx_flow_en; } ;
struct TYPE_6__ {int rx_flow_en; scalar_t__ rx_flow_thrhd; } ;
struct TYPE_5__ {scalar_t__ rx_flow_thrhd; } ;
struct TYPE_8__ {TYPE_3__ conf0; TYPE_2__ conf1; TYPE_1__ mem_conf; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 TYPE_4__** UART ;
 int UART_CHECK (int,char*,int ) ;
 int UART_ENTER_CRITICAL (int *) ;
 int UART_EXIT_CRITICAL (int *) ;
 scalar_t__ UART_FIFO_LEN ;
 int UART_HW_FLOWCTRL_CTS ;
 int UART_HW_FLOWCTRL_MAX ;
 int UART_HW_FLOWCTRL_RTS ;
 size_t UART_NUM_MAX ;
 int * uart_spinlock ;

esp_err_t uart_set_hw_flow_ctrl(uart_port_t uart_num, uart_hw_flowcontrol_t flow_ctrl, uint8_t rx_thresh)
{
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    UART_CHECK((rx_thresh < UART_FIFO_LEN), "rx flow thresh error", ESP_FAIL);
    UART_CHECK((flow_ctrl < UART_HW_FLOWCTRL_MAX), "hw_flowctrl mode error", ESP_FAIL);
    UART_ENTER_CRITICAL(&uart_spinlock[uart_num]);
    if (flow_ctrl & UART_HW_FLOWCTRL_RTS) {





        UART[uart_num]->conf1.rx_flow_en = 1;
    } else {
        UART[uart_num]->conf1.rx_flow_en = 0;
    }
    if (flow_ctrl & UART_HW_FLOWCTRL_CTS) {
        UART[uart_num]->conf0.tx_flow_en = 1;
    } else {
        UART[uart_num]->conf0.tx_flow_en = 0;
    }
    UART_EXIT_CRITICAL(&uart_spinlock[uart_num]);
    return ESP_OK;
}
