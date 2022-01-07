
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int SR; } ;
typedef TYPE_1__ USART_TypeDef ;
typedef scalar_t__ FlagStatus ;


 int IS_USART_1236_PERIPH (TYPE_1__*) ;
 int IS_USART_ALL_PERIPH (TYPE_1__*) ;
 int IS_USART_FLAG (int) ;
 scalar_t__ RESET ;
 scalar_t__ SET ;
 int USART_FLAG_CTS ;
 int assert_param (int ) ;

FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, uint16_t USART_FLAG)
{
  FlagStatus bitstatus = RESET;

  assert_param(IS_USART_ALL_PERIPH(USARTx));
  assert_param(IS_USART_FLAG(USART_FLAG));


  if (USART_FLAG == USART_FLAG_CTS)
  {
    assert_param(IS_USART_1236_PERIPH(USARTx));
  }

  if ((USARTx->SR & USART_FLAG) != (uint16_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}
