
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int CR1; } ;
typedef TYPE_1__ USART_TypeDef ;


 int IS_USART_ALL_PERIPH (TYPE_1__*) ;
 int USART_CR1_SBK ;
 int assert_param (int ) ;

void USART_SendBreak(USART_TypeDef* USARTx)
{

  assert_param(IS_USART_ALL_PERIPH(USARTx));


  USARTx->CR1 |= USART_CR1_SBK;
}
