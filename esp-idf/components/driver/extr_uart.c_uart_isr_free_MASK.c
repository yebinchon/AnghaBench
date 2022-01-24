#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uart_port_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_2__ {int /*<<< orphan*/ * intr_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t UART_NUM_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__** p_uart_obj ; 
 int /*<<< orphan*/ * uart_spinlock ; 

esp_err_t FUNC4(uart_port_t uart_num)
{
    esp_err_t ret;
    FUNC0((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    if (p_uart_obj[uart_num]->intr_handle == NULL) {
        return ESP_ERR_INVALID_ARG;
    }
    FUNC1(&uart_spinlock[uart_num]);
    ret = FUNC3(p_uart_obj[uart_num]->intr_handle);
    p_uart_obj[uart_num]->intr_handle = NULL;
    FUNC2(&uart_spinlock[uart_num]);
    return ret;
}