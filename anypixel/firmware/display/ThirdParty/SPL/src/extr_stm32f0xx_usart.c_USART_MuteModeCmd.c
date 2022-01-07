
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ CR1; } ;
typedef TYPE_1__ USART_TypeDef ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int IS_USART_ALL_PERIPH (TYPE_1__*) ;
 scalar_t__ USART_CR1_MME ;
 int assert_param (int ) ;

void USART_MuteModeCmd(USART_TypeDef* USARTx, FunctionalState NewState)
{

  assert_param(IS_USART_ALL_PERIPH(USARTx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    USARTx->CR1 |= USART_CR1_MME;
  }
  else
  {

    USARTx->CR1 &= (uint32_t)~((uint32_t)USART_CR1_MME);
  }
}
