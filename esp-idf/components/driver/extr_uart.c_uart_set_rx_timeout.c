
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uart_port_t ;
typedef void* tout_thresh ;
typedef int esp_err_t ;
struct TYPE_7__ {int rx_tout_thrhd; int rx_tout_en; } ;
struct TYPE_6__ {void* rx_tout_thrhd; } ;
struct TYPE_5__ {scalar_t__ tick_ref_always_on; } ;
struct TYPE_8__ {TYPE_3__ conf1; TYPE_2__ mem_conf; TYPE_1__ conf0; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_4__** UART ;
 int UART_CHECK (int,char*,int ) ;
 int UART_ENTER_CRITICAL (int *) ;
 int UART_EXIT_CRITICAL (int *) ;
 size_t UART_NUM_MAX ;
 int const UART_RX_TOUT_THRHD_V ;
 int const UART_TOUT_REF_FACTOR_DEFAULT ;
 int * uart_spinlock ;

esp_err_t uart_set_rx_timeout(uart_port_t uart_num, const uint8_t tout_thresh)
{
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_ERR_INVALID_ARG);
    UART_CHECK((tout_thresh < 127), "tout_thresh max value is 126", ESP_ERR_INVALID_ARG);
    UART_ENTER_CRITICAL(&uart_spinlock[uart_num]);


    if (tout_thresh > 0) {
        UART[uart_num]->conf1.rx_tout_en = 1;
    } else {
        UART[uart_num]->conf1.rx_tout_en = 0;
    }
    UART_EXIT_CRITICAL(&uart_spinlock[uart_num]);
    return ESP_OK;
}
