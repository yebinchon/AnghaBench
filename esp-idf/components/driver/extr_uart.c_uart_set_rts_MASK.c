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
typedef  size_t uart_port_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_5__ {int sw_rts; } ;
struct TYPE_4__ {int rx_flow_en; } ;
struct TYPE_6__ {TYPE_2__ conf0; TYPE_1__ conf1; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_3__** UART ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t UART_NUM_MAX ; 
 int /*<<< orphan*/ * uart_spinlock ; 

esp_err_t FUNC3(uart_port_t uart_num, int level)
{
    FUNC0((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    FUNC0((UART[uart_num]->conf1.rx_flow_en != 1), "disable hw flowctrl before using sw control", ESP_FAIL);
    FUNC1(&uart_spinlock[uart_num]);
    UART[uart_num]->conf0.sw_rts = level & 0x1;
    FUNC2(&uart_spinlock[uart_num]);
    return ESP_OK;
}