
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ CR3; } ;
typedef TYPE_1__ USART_TypeDef ;


 int IS_USART_ALL_PERIPH (TYPE_1__*) ;
 int IS_USART_DMAONERROR (scalar_t__) ;
 scalar_t__ USART_CR3_DDRE ;
 int assert_param (int ) ;

void USART_DMAReceptionErrorConfig(USART_TypeDef* USARTx, uint32_t USART_DMAOnError)
{

  assert_param(IS_USART_ALL_PERIPH(USARTx));
  assert_param(IS_USART_DMAONERROR(USART_DMAOnError));


  USARTx->CR3 &= (uint32_t)~((uint32_t)USART_CR3_DDRE);

  USARTx->CR3 |= USART_DMAOnError;
}
