#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int USART_Mode; int /*<<< orphan*/  USART_HardwareFlowControl; int /*<<< orphan*/  USART_Parity; int /*<<< orphan*/  USART_StopBits; int /*<<< orphan*/  USART_WordLength; int /*<<< orphan*/  USART_BaudRate; } ;
typedef  TYPE_1__ USART_InitTypeDef ;
struct TYPE_6__ {int configured; int /*<<< orphan*/  USARTx; int /*<<< orphan*/  baud; int /*<<< orphan*/  num_pins; int /*<<< orphan*/  pins; int /*<<< orphan*/  apb2; int /*<<< orphan*/  apb1; int /*<<< orphan*/  ahb1; int /*<<< orphan*/  rx_buf_size; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  rx_fifo; } ;
typedef  TYPE_2__ CONFIG_USART_ConfigState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USART_HardwareFlowControl_None ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int USART_Mode_Rx ; 
 int USART_Mode_Tx ; 
 int /*<<< orphan*/  USART_Parity_No ; 
 int /*<<< orphan*/  USART_StopBits_1 ; 
 int /*<<< orphan*/  USART_WordLength_8b ; 

void FUNC8(CONFIG_USART_ConfigState *cfg) {
	USART_InitTypeDef USART_InitStructure;

	FUNC1(cfg->rx_fifo, cfg->rx_buf, cfg->rx_buf_size);

	// turn on peripheral clocks
	FUNC2(cfg->ahb1, ENABLE);
	FUNC3(cfg->apb1, ENABLE);
	FUNC4(cfg->apb2, ENABLE);

	// configure pins
	FUNC0(cfg->pins, cfg->num_pins);

	// configure USART
	FUNC6(cfg->USARTx);
	USART_InitStructure.USART_BaudRate = cfg->baud;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits = USART_StopBits_1;
    USART_InitStructure.USART_Parity = USART_Parity_No;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	FUNC7(cfg->USARTx, &USART_InitStructure);

	// enable RX interrupt
	//USART_ITConfig(cfg->USARTx, USART_IT_RXNE, ENABLE);

	// enable the USART
	FUNC5(cfg->USARTx, ENABLE);
	cfg->configured = true;
	cfg->configured = true;
	cfg->configured = true;
	cfg->configured = true;
}