
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uart_port_t ;
typedef int esp_err_t ;
struct TYPE_9__ {void* xoff_char; scalar_t__ xoff_threshold; } ;
struct TYPE_8__ {void* xon_char; scalar_t__ xon_threshold; } ;
struct TYPE_7__ {void* xoff_char; void* xon_char; scalar_t__ xoff_threshold; scalar_t__ xon_threshold; } ;
struct TYPE_6__ {int sw_flow_con_en; int xonoff_del; } ;
struct TYPE_10__ {TYPE_4__ swfc_conf0; TYPE_3__ swfc_conf1; TYPE_2__ swfc_conf; TYPE_1__ flow_conf; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 TYPE_5__** UART ;
 int UART_CHECK (int,char*,int ) ;
 int UART_ENTER_CRITICAL (int *) ;
 int UART_EXIT_CRITICAL (int *) ;
 scalar_t__ UART_FIFO_LEN ;
 size_t UART_NUM_MAX ;
 void* XOFF ;
 void* XON ;
 int * uart_spinlock ;

esp_err_t uart_set_sw_flow_ctrl(uart_port_t uart_num, bool enable, uint8_t rx_thresh_xon, uint8_t rx_thresh_xoff)
{
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    UART_CHECK((rx_thresh_xon < UART_FIFO_LEN), "rx flow xon thresh error", ESP_FAIL);
    UART_CHECK((rx_thresh_xoff < UART_FIFO_LEN), "rx flow xon thresh error", ESP_FAIL);
    UART_ENTER_CRITICAL(&uart_spinlock[uart_num]);
    UART[uart_num]->flow_conf.sw_flow_con_en = enable ? 1 : 0;
    UART[uart_num]->flow_conf.xonoff_del = enable ? 1 : 0;
    UART_EXIT_CRITICAL(&uart_spinlock[uart_num]);
    return ESP_OK;
}
