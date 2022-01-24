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
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ CR2; } ;
typedef  TYPE_1__ USART_TypeDef ;
typedef  scalar_t__ FunctionalState ;

/* Variables and functions */
 scalar_t__ DISABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ USART_CR2_MSBFIRST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(USART_TypeDef* USARTx, FunctionalState NewState)
{
  /* Check the parameters */
  FUNC2(FUNC1(USARTx));
  FUNC2(FUNC0(NewState));
  
  if (NewState != DISABLE)
  {
    /* Enable the most significant bit first transmitted/received following the 
       start bit by setting the MSBFIRST bit in the CR2 register */
    USARTx->CR2 |= USART_CR2_MSBFIRST;
  }
  else
  {
    /* Disable the most significant bit first transmitted/received following the 
       start bit by clearing the MSBFIRST bit in the CR2 register */
    USARTx->CR2 &= (uint32_t)~((uint32_t)USART_CR2_MSBFIRST);
  }
}