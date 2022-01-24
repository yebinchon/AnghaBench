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
typedef  int /*<<< orphan*/  USART_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  DISABLE ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCC_APB1Periph_UART4 ; 
 int /*<<< orphan*/  RCC_APB1Periph_UART5 ; 
 int /*<<< orphan*/  RCC_APB1Periph_USART2 ; 
 int /*<<< orphan*/  RCC_APB1Periph_USART3 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCC_APB2Periph_USART1 ; 
 int /*<<< orphan*/  RCC_APB2Periph_USART6 ; 
 int /*<<< orphan*/ * UART4 ; 
 int /*<<< orphan*/ * UART5 ; 
 int /*<<< orphan*/ * USART1 ; 
 int /*<<< orphan*/ * USART2 ; 
 int /*<<< orphan*/ * USART3 ; 
 int /*<<< orphan*/ * USART6 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(USART_TypeDef* USARTx)
{
  /* Check the parameters */
  FUNC3(FUNC0(USARTx));

  if (USARTx == USART1)
  {
    FUNC2(RCC_APB2Periph_USART1, ENABLE);
    FUNC2(RCC_APB2Periph_USART1, DISABLE);
  }
  else if (USARTx == USART2)
  {
    FUNC1(RCC_APB1Periph_USART2, ENABLE);
    FUNC1(RCC_APB1Periph_USART2, DISABLE);
  }
  else if (USARTx == USART3)
  {
    FUNC1(RCC_APB1Periph_USART3, ENABLE);
    FUNC1(RCC_APB1Periph_USART3, DISABLE);
  }    
  else if (USARTx == UART4)
  {
    FUNC1(RCC_APB1Periph_UART4, ENABLE);
    FUNC1(RCC_APB1Periph_UART4, DISABLE);
  }
  else if (USARTx == UART5)
  {
    FUNC1(RCC_APB1Periph_UART5, ENABLE);
    FUNC1(RCC_APB1Periph_UART5, DISABLE);
  }     
  else
  {
    if (USARTx == USART6)
    { 
      FUNC2(RCC_APB2Periph_USART6, ENABLE);
      FUNC2(RCC_APB2Periph_USART6, DISABLE);
    }
  }
}