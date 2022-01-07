
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int RDR; } ;
typedef TYPE_1__ USART_TypeDef ;


 int IS_USART_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint16_t USART_ReceiveData(USART_TypeDef* USARTx)
{

  assert_param(IS_USART_ALL_PERIPH(USARTx));


  return (uint16_t)(USARTx->RDR & (uint16_t)0x01FF);
}
