
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int CR2; } ;
typedef TYPE_1__ USART_TypeDef ;


 int IS_USART_ALL_PERIPH (TYPE_1__*) ;
 scalar_t__ USART_CR2_ADD ;
 int assert_param (int ) ;

void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address)
{

  assert_param(IS_USART_ALL_PERIPH(USARTx));


  USARTx->CR2 &= (uint32_t)~((uint32_t)USART_CR2_ADD);

  USARTx->CR2 |=((uint32_t)USART_Address << (uint32_t)0x18);
}
