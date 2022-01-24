#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uart_port_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_3__ {int active_threshold; } ;
struct TYPE_4__ {TYPE_1__ sleep_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_2__** UART ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int UART_MIN_WAKEUP_THRESH ; 
 size_t UART_NUM_MAX ; 

esp_err_t FUNC1(uart_port_t uart_num, int *out_wakeup_threshold)
{
    FUNC0((uart_num < UART_NUM_MAX), "uart_num error", ESP_ERR_INVALID_ARG);
    FUNC0((out_wakeup_threshold != NULL), "argument is NULL", ESP_ERR_INVALID_ARG);

    *out_wakeup_threshold = UART[uart_num]->sleep_conf.active_threshold + UART_MIN_WAKEUP_THRESH;
    return ESP_OK;
}