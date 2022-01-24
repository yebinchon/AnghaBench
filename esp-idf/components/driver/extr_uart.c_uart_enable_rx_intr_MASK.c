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
typedef  int /*<<< orphan*/  uart_port_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int UART_RXFIFO_FULL_INT_ENA ; 
 int UART_RXFIFO_TOUT_INT_ENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

esp_err_t FUNC1(uart_port_t uart_num)
{
    return FUNC0(uart_num, UART_RXFIFO_FULL_INT_ENA | UART_RXFIFO_TOUT_INT_ENA);
}