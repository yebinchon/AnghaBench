#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct TYPE_7__ {int SR; int /*<<< orphan*/  DR; } ;
struct TYPE_6__ {int configured; int TX_active; TYPE_2__* USARTx; int /*<<< orphan*/  rx_fifo; int /*<<< orphan*/  frame_available; int /*<<< orphan*/  DMA_stream; } ;
typedef  TYPE_1__ CONFIG_USART_ConfigState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  DISABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USART_DMAReq_Tx ; 
 int USART_FLAG_IDLE ; 
 int USART_FLAG_RXNE ; 
 int USART_FLAG_TC ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USART_IT_TC ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

void FUNC11(CONFIG_USART_ConfigState *cfg) {
	uint8_t workByte;
	uint16_t status = cfg->USARTx->SR;

	FUNC10(cfg->configured == true);
    FUNC1(3);
	if(status & USART_FLAG_RXNE) {
        FUNC2(4);
		// we have a new byte to receive
		//workByte = USART_ReceiveData(cfg->USARTx); // bypass wrapper function to speed up ISR
		workByte = cfg->USARTx->DR;

		FUNC6(cfg->rx_fifo, workByte);
	}
	if( (cfg->TX_active) && (status & USART_FLAG_TC) ) {
        FUNC2(5);
		// disable the interrupt since transmission will remain complete until we start a new one
		FUNC8(cfg->USARTx, USART_IT_TC, DISABLE);

		// transmission has completed so disable DMA and update TX_active flag
		FUNC3(cfg->DMA_stream, DISABLE);
		FUNC4(cfg->DMA_stream);
		FUNC7(cfg->USARTx, USART_DMAReq_Tx, DISABLE);
		cfg->TX_active = false;
	}
    if(status & USART_FLAG_IDLE) {
        FUNC2(6);
        // got idle state so next byte will be start of packet
        cfg->frame_available = FUNC5(cfg->rx_fifo);
        // need to read from the data register to clear this interrupt flag
        workByte = FUNC9(cfg->USARTx);
	}
	FUNC0(3);
}