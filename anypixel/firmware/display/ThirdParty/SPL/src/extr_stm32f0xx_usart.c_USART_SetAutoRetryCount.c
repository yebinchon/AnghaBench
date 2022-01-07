
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int CR3; } ;
typedef TYPE_1__ USART_TypeDef ;


 int IS_USART_12_PERIPH (TYPE_1__*) ;
 int IS_USART_AUTO_RETRY_COUNTER (scalar_t__) ;
 scalar_t__ USART_CR3_SCARCNT ;
 int assert_param (int ) ;

void USART_SetAutoRetryCount(USART_TypeDef* USARTx, uint8_t USART_AutoCount)
{

  assert_param(IS_USART_12_PERIPH(USARTx));
  assert_param(IS_USART_AUTO_RETRY_COUNTER(USART_AutoCount));

  USARTx->CR3 &= (uint32_t)~((uint32_t)USART_CR3_SCARCNT);

  USARTx->CR3 |= (uint32_t)((uint32_t)USART_AutoCount << 0x11);
}
