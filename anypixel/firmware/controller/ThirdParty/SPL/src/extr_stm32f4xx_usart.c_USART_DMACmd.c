
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ CR3; } ;
typedef TYPE_1__ USART_TypeDef ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int IS_USART_ALL_PERIPH (TYPE_1__*) ;
 int IS_USART_DMAREQ (scalar_t__) ;
 int assert_param (int ) ;

void USART_DMACmd(USART_TypeDef* USARTx, uint16_t USART_DMAReq, FunctionalState NewState)
{

  assert_param(IS_USART_ALL_PERIPH(USARTx));
  assert_param(IS_USART_DMAREQ(USART_DMAReq));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {


    USARTx->CR3 |= USART_DMAReq;
  }
  else
  {


    USARTx->CR3 &= (uint16_t)~USART_DMAReq;
  }
}
