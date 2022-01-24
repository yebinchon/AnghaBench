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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLK ; 
 int /*<<< orphan*/  DLL ; 
 int /*<<< orphan*/  DLM ; 
 int /*<<< orphan*/  FCR ; 
 int /*<<< orphan*/  LCR ; 
 int /*<<< orphan*/  MCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RST ; 
 int UART_CLK_125M_1 ; 
 int UART_CLK_125M_2 ; 
 int UART_LCR_8BITS ; 
 int UART_LCR_DLAB ; 
 int UART_MCR_RTS ; 

__attribute__((used)) static void FUNC2( void )
{
	uint32_t register_read;
	
	FUNC1 (RST, 0x7);				/* LPSS UART2 controller out ot reset */
	register_read = FUNC0 (RST);

	FUNC1 (LCR, UART_LCR_DLAB);	/* Set DLAB bit to enable reading/writing of DLL, DLH */
	register_read = FUNC0 (LCR);

	FUNC1 (DLL, 1);				/* Divisor Latch Low Register */
	register_read = FUNC0 (DLL);

	FUNC1 (DLM, 0);				/* Divisor Latch High Register */
	register_read = FUNC0 (DLM);

	FUNC1 (FCR, 1);				/* Enable FIFO */
	register_read = FUNC0 (FCR);

	FUNC1 (LCR, UART_LCR_8BITS);	/* Set 8 bits, clear DLAB */
	register_read = FUNC0 (LCR);

	FUNC1 (MCR, UART_MCR_RTS);		/* Request to send */
	register_read = FUNC0 (MCR);

	FUNC1 (CLK, UART_CLK_125M_1);	/* 1.25M Clock speed */
	register_read = FUNC0 (CLK);

	FUNC1 (CLK, UART_CLK_125M_2);	/* 1.25M Clock speed */
	register_read = FUNC0 (CLK);	
}