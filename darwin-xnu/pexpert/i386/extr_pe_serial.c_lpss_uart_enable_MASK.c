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
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ PCI_UART2 ; 
 scalar_t__ TRUE ; 
 int lpss_uart_enabled ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  lpss_uart_supported ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned int) ; 

void FUNC3( boolean_t on_off )
{
	unsigned int pmcs_reg;

	if (!lpss_uart_supported) {
		return;
	}

	pmcs_reg = FUNC1 (PCI_UART2 + 0x84);
	if (on_off == FALSE) {
		pmcs_reg |= 0x03;
		lpss_uart_enabled = 0;
	} else {
		pmcs_reg &= ~(0x03);
	}

	FUNC2 (PCI_UART2 + 0x84, pmcs_reg);
	pmcs_reg = FUNC1 (PCI_UART2 + 0x84);
	
	if (on_off == TRUE) {
		FUNC0();
		lpss_uart_enabled = 1;
	}
}