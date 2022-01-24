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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ CR2; } ;
typedef  TYPE_1__ USART_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ USART_CR2_ADD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(USART_TypeDef* USARTx, uint8_t USART_Address)
{
  /* Check the parameters */
  FUNC2(FUNC1(USARTx));
  FUNC2(FUNC0(USART_Address)); 
    
  /* Clear the USART address */
  USARTx->CR2 &= (uint16_t)~((uint16_t)USART_CR2_ADD);
  /* Set the USART address node */
  USARTx->CR2 |= USART_Address;
}