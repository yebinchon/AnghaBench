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
typedef  scalar_t__ uart_word_length_t ;
typedef  size_t uart_port_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_3__ {scalar_t__ bit_num; } ;
struct TYPE_4__ {TYPE_1__ conf0; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_2__** UART ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ UART_DATA_BITS_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t UART_NUM_MAX ; 
 int /*<<< orphan*/ * uart_spinlock ; 

esp_err_t FUNC3(uart_port_t uart_num, uart_word_length_t data_bit)
{
    FUNC0((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    FUNC0((data_bit < UART_DATA_BITS_MAX), "data bit error", ESP_FAIL);
    FUNC1(&uart_spinlock[uart_num]);
    UART[uart_num]->conf0.bit_num = data_bit;
    FUNC2(&uart_spinlock[uart_num]);
    return ESP_OK;
}