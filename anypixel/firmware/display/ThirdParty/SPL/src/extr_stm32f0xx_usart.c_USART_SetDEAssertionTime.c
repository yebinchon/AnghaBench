
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int CR1; } ;
typedef TYPE_1__ USART_TypeDef ;


 int IS_USART_ALL_PERIPH (TYPE_1__*) ;
 int IS_USART_DE_ASSERTION_DEASSERTION_TIME (int) ;
 scalar_t__ USART_CR1_DEAT ;
 int assert_param (int ) ;

void USART_SetDEAssertionTime(USART_TypeDef* USARTx, uint32_t USART_DEAssertionTime)
{

  assert_param(IS_USART_ALL_PERIPH(USARTx));
  assert_param(IS_USART_DE_ASSERTION_DEASSERTION_TIME(USART_DEAssertionTime));


  USARTx->CR1 &= (uint32_t)~((uint32_t)USART_CR1_DEAT);

  USARTx->CR1 |=((uint32_t)USART_DEAssertionTime << (uint32_t)0x15);
}
