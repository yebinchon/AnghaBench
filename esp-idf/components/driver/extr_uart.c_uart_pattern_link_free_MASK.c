#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uart_port_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_4__ {int* data; scalar_t__ rd; scalar_t__ wr; } ;
struct TYPE_5__ {TYPE_1__ rx_pattern_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 TYPE_2__** p_uart_obj ; 
 int /*<<< orphan*/ * uart_spinlock ; 

__attribute__((used)) static esp_err_t FUNC4(uart_port_t uart_num)
{
    FUNC0((p_uart_obj[uart_num]), "uart driver error", ESP_FAIL);
    if (p_uart_obj[uart_num]->rx_pattern_pos.data != NULL) {
        int *pdata = p_uart_obj[uart_num]->rx_pattern_pos.data;
        FUNC1(&uart_spinlock[uart_num]);
        p_uart_obj[uart_num]->rx_pattern_pos.data = NULL;
        p_uart_obj[uart_num]->rx_pattern_pos.wr = 0;
        p_uart_obj[uart_num]->rx_pattern_pos.rd = 0;
        FUNC2(&uart_spinlock[uart_num]);
        FUNC3(pdata);
    }
    return ESP_OK;
}