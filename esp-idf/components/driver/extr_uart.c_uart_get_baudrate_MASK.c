#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  size_t uart_port_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_4__ {scalar_t__ tick_ref_always_on; } ;
struct TYPE_5__ {int div_int; int div_frag; } ;
struct TYPE_6__ {TYPE_1__ conf0; TYPE_2__ clk_div; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 int REF_CLK_FREQ ; 
 TYPE_3__** UART ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t UART_NUM_MAX ; 
 int FUNC3 () ; 
 int /*<<< orphan*/ * uart_spinlock ; 

esp_err_t FUNC4(uart_port_t uart_num, uint32_t *baudrate)
{
    FUNC0((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    FUNC1(&uart_spinlock[uart_num]);
    uint32_t clk_div = (UART[uart_num]->clk_div.div_int << 4) | UART[uart_num]->clk_div.div_frag;
    FUNC2(&uart_spinlock[uart_num]);
    uint32_t uart_clk_freq = FUNC3();
    if (UART[uart_num]->conf0.tick_ref_always_on == 0) {
        uart_clk_freq = REF_CLK_FREQ;
    }
    (*baudrate) = ((uart_clk_freq) << 4) / clk_div;
    return ESP_OK;
}