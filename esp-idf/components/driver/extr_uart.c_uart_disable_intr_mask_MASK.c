#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t uart_port_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 size_t UART_NUM_MAX ; 
 int /*<<< orphan*/ * uart_spinlock ; 

esp_err_t FUNC5(uart_port_t uart_num, uint32_t disable_mask)
{
    FUNC1((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    FUNC2(&uart_spinlock[uart_num]);
    FUNC0(FUNC4(uart_num), disable_mask);
    FUNC3(&uart_spinlock[uart_num]);
    return ESP_OK;
}