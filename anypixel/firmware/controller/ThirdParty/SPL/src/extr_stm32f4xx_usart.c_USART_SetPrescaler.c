
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int GTPR; } ;
typedef TYPE_1__ USART_TypeDef ;


 int IS_USART_ALL_PERIPH (TYPE_1__*) ;
 int USART_GTPR_GT ;
 int assert_param (int ) ;

void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler)
{

  assert_param(IS_USART_ALL_PERIPH(USARTx));


  USARTx->GTPR &= USART_GTPR_GT;

  USARTx->GTPR |= USART_Prescaler;
}
