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

/* Variables and functions */
 scalar_t__ COM1_PORT_ADDR ; 
 scalar_t__ UART_SCR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

__attribute__((used)) static int FUNC3( void )
{
    /* Verify that the Scratch Register is accessible */
    FUNC1(COM1_PORT_ADDR + UART_SCR, 0x5a);
    if (FUNC0(COM1_PORT_ADDR + UART_SCR) != 0x5a) return false;
    FUNC1(COM1_PORT_ADDR + UART_SCR, 0xa5);
    if (FUNC0(COM1_PORT_ADDR + UART_SCR) != 0xa5) return false;
    FUNC2('\n');
    return true;
}