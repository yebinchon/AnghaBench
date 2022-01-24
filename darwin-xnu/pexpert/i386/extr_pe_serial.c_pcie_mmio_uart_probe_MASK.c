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
typedef  int /*<<< orphan*/  new_pcie_mmio_uart_base ;

/* Variables and functions */
 unsigned int PCIE_MMIO_UART_BASE ; 
 scalar_t__ FUNC0 (char*,unsigned int*,int) ; 
 unsigned int pcie_mmio_uart_base ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static int
FUNC2( void )
{
    unsigned new_pcie_mmio_uart_base = 0;

    // if specified, pcie_mmio_uart overrides all probing
    if (FUNC0("pcie_mmio_uart", &new_pcie_mmio_uart_base, sizeof (new_pcie_mmio_uart_base)))
    {
        // pcie_mmio_uart=0 will disable pcie_mmio_uart support
        if (new_pcie_mmio_uart_base == 0) {
            return 0;
        }
        pcie_mmio_uart_base = new_pcie_mmio_uart_base;
        return 1;
    }

    pcie_mmio_uart_base = PCIE_MMIO_UART_BASE;
    if (FUNC1()) {
      return 1;
    }

    // no pcie_mmio uart found
    return 0;
}