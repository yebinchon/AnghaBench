#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int configured; int TX_active; int /*<<< orphan*/  USARTx; int /*<<< orphan*/  rx_fifo; } ;
typedef  TYPE_1__ CONFIG_USART_ConfigState ;

/* Variables and functions */
 int /*<<< orphan*/  DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ RESET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USART_IT_RXNE ; 
 int /*<<< orphan*/  USART_IT_TC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(CONFIG_USART_ConfigState *cfg) {
	uint8_t workByte;

	FUNC4(cfg->configured == true);

	if(FUNC1(cfg->USARTx, USART_IT_RXNE) != RESET) {
		// we have a new byte to receive
		workByte = FUNC3(cfg->USARTx);
		FUNC0(cfg->rx_fifo, workByte);
	}
	if(FUNC1(cfg->USARTx, USART_IT_TC) != RESET) {
		// disable the interrupt since transmission will remain complete until we start a new one
		FUNC2(cfg->USARTx, USART_IT_TC, DISABLE);

		cfg->TX_active = false;
	}
}