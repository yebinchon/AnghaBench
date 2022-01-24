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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uart_port_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int UART_ST_UTX_OUT_M ; 
 int UART_TXFIFO_CNT_M ; 

void FUNC2(uart_port_t uart_num)
{
    uint32_t status;
    do {
        status = FUNC0(FUNC1(uart_num));
        /* either tx count or state is non-zero */
    } while ((status & (UART_ST_UTX_OUT_M | UART_TXFIFO_CNT_M)) != 0);
}