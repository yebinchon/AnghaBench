
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int SR; } ;
typedef TYPE_1__ USART_TypeDef ;


 int IS_USART_1236_PERIPH (TYPE_1__*) ;
 int IS_USART_ALL_PERIPH (TYPE_1__*) ;
 int IS_USART_CLEAR_FLAG (int) ;
 int USART_FLAG_CTS ;
 int assert_param (int ) ;

void USART_ClearFlag(USART_TypeDef* USARTx, uint16_t USART_FLAG)
{

  assert_param(IS_USART_ALL_PERIPH(USARTx));
  assert_param(IS_USART_CLEAR_FLAG(USART_FLAG));


  if ((USART_FLAG & USART_FLAG_CTS) == USART_FLAG_CTS)
  {
    assert_param(IS_USART_1236_PERIPH(USARTx));
  }

  USARTx->SR = (uint16_t)~USART_FLAG;
}
