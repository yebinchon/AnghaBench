
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uart_port_t ;
typedef int esp_err_t ;
struct TYPE_4__ {scalar_t__ tick_ref_always_on; } ;
struct TYPE_5__ {int div_int; int div_frag; } ;
struct TYPE_6__ {TYPE_1__ conf0; TYPE_2__ clk_div; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 int REF_CLK_FREQ ;
 TYPE_3__** UART ;
 int UART_CHECK (int,char*,int ) ;
 int UART_ENTER_CRITICAL (int *) ;
 int UART_EXIT_CRITICAL (int *) ;
 size_t UART_NUM_MAX ;
 int esp_clk_apb_freq () ;
 int * uart_spinlock ;

esp_err_t uart_get_baudrate(uart_port_t uart_num, uint32_t *baudrate)
{
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    UART_ENTER_CRITICAL(&uart_spinlock[uart_num]);
    uint32_t clk_div = (UART[uart_num]->clk_div.div_int << 4) | UART[uart_num]->clk_div.div_frag;
    UART_EXIT_CRITICAL(&uart_spinlock[uart_num]);
    uint32_t uart_clk_freq = esp_clk_apb_freq();
    if (UART[uart_num]->conf0.tick_ref_always_on == 0) {
        uart_clk_freq = REF_CLK_FREQ;
    }
    (*baudrate) = ((uart_clk_freq) << 4) / clk_div;
    return ESP_OK;
}
