#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  new_uart_baud_rate ;
struct TYPE_5__ {int /*<<< orphan*/  (* uart_init ) () ;} ;

/* Variables and functions */
 int LEGACY_UART_CLOCK ; 
 scalar_t__ FUNC0 (char*,unsigned int*,int) ; 
 TYPE_1__* gPESF ; 
 int legacy_uart_enabled ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__ legacy_uart_serial_functions ; 
 int lpss_uart_enabled ; 
 int lpss_uart_supported ; 
 scalar_t__ FUNC2 () ; 
 TYPE_1__ mmio_uart_serial_functions ; 
 scalar_t__ FUNC3 () ; 
 TYPE_1__ pcie_mmio_uart_serial_functions ; 
 int pcie_uart_enabled ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 unsigned int uart_baud_rate ; 

int
FUNC7( void )
{
    unsigned new_uart_baud_rate = 0;

    if (FUNC0("serialbaud", &new_uart_baud_rate, sizeof (new_uart_baud_rate)))
    {
        /* Valid divisor? */
        if (!((LEGACY_UART_CLOCK / 16) % new_uart_baud_rate)) {
            uart_baud_rate = new_uart_baud_rate;
        }
    }

    if ( FUNC2() )
    {
        gPESF = &mmio_uart_serial_functions;
        gPESF->uart_init();
        lpss_uart_supported = 1;
        lpss_uart_enabled = 1;
        return 1;
    }
    else if ( FUNC1() )
    {
        gPESF = &legacy_uart_serial_functions;
        gPESF->uart_init();
        legacy_uart_enabled = 1;
        return 1;
    }
    else if ( FUNC3() )
    {
        gPESF = &pcie_mmio_uart_serial_functions;
        gPESF->uart_init();
        pcie_uart_enabled = 1;
        return 1;
    }
    else
    {
        return 0;
    }

}