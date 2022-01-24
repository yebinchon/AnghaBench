#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {int SR; } ;
typedef  TYPE_1__ USART_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int USART_FLAG_CTS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(USART_TypeDef* USARTx, uint16_t USART_FLAG)
{
  /* Check the parameters */
  FUNC3(FUNC1(USARTx));
  FUNC3(FUNC2(USART_FLAG));

  /* The CTS flag is not available for UART4 and UART5 */
  if ((USART_FLAG & USART_FLAG_CTS) == USART_FLAG_CTS)
  {
    FUNC3(FUNC0(USARTx));
  } 
       
  USARTx->SR = (uint16_t)~USART_FLAG;
}