#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  GTPR; } ;
typedef  TYPE_1__ USART_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  USART_GTPR_GT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(USART_TypeDef* USARTx, uint8_t USART_Prescaler)
{ 
  /* Check the parameters */
  FUNC1(FUNC0(USARTx));
  
  /* Clear the USART prescaler */
  USARTx->GTPR &= USART_GTPR_GT;
  /* Set the USART prescaler */
  USARTx->GTPR |= USART_Prescaler;
}