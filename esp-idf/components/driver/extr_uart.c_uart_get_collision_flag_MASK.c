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
struct TYPE_2__ {int coll_det_flg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UART_MODE_RS485_COLLISION_DETECT ; 
 int /*<<< orphan*/  UART_MODE_RS485_HALF_DUPLEX ; 
 size_t UART_NUM_MAX ; 
 TYPE_1__** p_uart_obj ; 

esp_err_t FUNC2(uart_port_t uart_num, bool *collision_flag)
{
    FUNC0((uart_num < UART_NUM_MAX), "uart_num error", ESP_ERR_INVALID_ARG);
    FUNC0((collision_flag != NULL), "wrong parameter pointer", ESP_ERR_INVALID_ARG);
    FUNC0((FUNC1(uart_num, UART_MODE_RS485_HALF_DUPLEX)
                    || FUNC1(uart_num, UART_MODE_RS485_COLLISION_DETECT)),
                    "wrong mode", ESP_ERR_INVALID_ARG);
    *collision_flag = p_uart_obj[uart_num]->coll_det_flg;
    return ESP_OK;
}