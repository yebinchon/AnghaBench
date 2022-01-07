
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ CR1; } ;
typedef TYPE_1__ USART_TypeDef ;


 int IS_USART_ALL_PERIPH (TYPE_1__*) ;
 int IS_USART_WAKEUP (scalar_t__) ;
 scalar_t__ USART_CR1_WAKE ;
 int assert_param (int ) ;

void USART_WakeUpConfig(USART_TypeDef* USARTx, uint16_t USART_WakeUp)
{

  assert_param(IS_USART_ALL_PERIPH(USARTx));
  assert_param(IS_USART_WAKEUP(USART_WakeUp));

  USARTx->CR1 &= (uint16_t)~((uint16_t)USART_CR1_WAKE);
  USARTx->CR1 |= USART_WakeUp;
}
