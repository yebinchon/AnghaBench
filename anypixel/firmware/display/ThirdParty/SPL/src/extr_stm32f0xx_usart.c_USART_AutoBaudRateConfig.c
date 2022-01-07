
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ CR2; } ;
typedef TYPE_1__ USART_TypeDef ;


 int IS_USART_12_PERIPH (TYPE_1__*) ;
 int IS_USART_AUTOBAUDRATE_MODE (scalar_t__) ;
 scalar_t__ USART_CR2_ABRMODE ;
 int assert_param (int ) ;

void USART_AutoBaudRateConfig(USART_TypeDef* USARTx, uint32_t USART_AutoBaudRate)
{

  assert_param(IS_USART_12_PERIPH(USARTx));
  assert_param(IS_USART_AUTOBAUDRATE_MODE(USART_AutoBaudRate));

  USARTx->CR2 &= (uint32_t)~((uint32_t)USART_CR2_ABRMODE);
  USARTx->CR2 |= USART_AutoBaudRate;
}
