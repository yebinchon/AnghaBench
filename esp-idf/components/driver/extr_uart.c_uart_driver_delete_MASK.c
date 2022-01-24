#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uart_port_t ;
typedef  int /*<<< orphan*/  periph_module_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_3__ {int /*<<< orphan*/ * tx_ring_buf; int /*<<< orphan*/ * rx_ring_buf; int /*<<< orphan*/ * xQueueUart; int /*<<< orphan*/ * rx_mux; int /*<<< orphan*/ * tx_mux; int /*<<< orphan*/ * tx_brk_sem; int /*<<< orphan*/ * tx_done_sem; int /*<<< orphan*/ * tx_fifo_sem; int /*<<< orphan*/  intr_handle; } ;

/* Variables and functions */
 size_t CONFIG_ESP_CONSOLE_UART_NUM ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 size_t UART_NUM_MAX ; 
 int /*<<< orphan*/  UART_TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 TYPE_1__** p_uart_obj ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

esp_err_t FUNC12(uart_port_t uart_num)
{
    FUNC1((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    if (p_uart_obj[uart_num] == NULL) {
        FUNC0(UART_TAG, "ALREADY NULL");
        return ESP_OK;
    }
    FUNC2(p_uart_obj[uart_num]->intr_handle);
    FUNC6(uart_num);
    FUNC7(uart_num);
    FUNC8(uart_num);

    if (p_uart_obj[uart_num]->tx_fifo_sem) {
        FUNC11(p_uart_obj[uart_num]->tx_fifo_sem);
        p_uart_obj[uart_num]->tx_fifo_sem = NULL;
    }
    if (p_uart_obj[uart_num]->tx_done_sem) {
        FUNC11(p_uart_obj[uart_num]->tx_done_sem);
        p_uart_obj[uart_num]->tx_done_sem = NULL;
    }
    if (p_uart_obj[uart_num]->tx_brk_sem) {
        FUNC11(p_uart_obj[uart_num]->tx_brk_sem);
        p_uart_obj[uart_num]->tx_brk_sem = NULL;
    }
    if (p_uart_obj[uart_num]->tx_mux) {
        FUNC11(p_uart_obj[uart_num]->tx_mux);
        p_uart_obj[uart_num]->tx_mux = NULL;
    }
    if (p_uart_obj[uart_num]->rx_mux) {
        FUNC11(p_uart_obj[uart_num]->rx_mux);
        p_uart_obj[uart_num]->rx_mux = NULL;
    }
    if (p_uart_obj[uart_num]->xQueueUart) {
        FUNC9(p_uart_obj[uart_num]->xQueueUart);
        p_uart_obj[uart_num]->xQueueUart = NULL;
    }
    if (p_uart_obj[uart_num]->rx_ring_buf) {
        FUNC10(p_uart_obj[uart_num]->rx_ring_buf);
        p_uart_obj[uart_num]->rx_ring_buf = NULL;
    }
    if (p_uart_obj[uart_num]->tx_ring_buf) {
        FUNC10(p_uart_obj[uart_num]->tx_ring_buf);
        p_uart_obj[uart_num]->tx_ring_buf = NULL;
    }

    FUNC3(p_uart_obj[uart_num]);
    p_uart_obj[uart_num] = NULL;

    if (uart_num != CONFIG_ESP_CONSOLE_UART_NUM) {
       periph_module_t periph_module = FUNC4(uart_num);
       FUNC5(periph_module);
    }
    return ESP_OK;
}