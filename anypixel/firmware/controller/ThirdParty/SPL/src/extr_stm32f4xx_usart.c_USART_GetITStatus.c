
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_5__ {int CR1; int CR2; int CR3; int SR; } ;
typedef TYPE_1__ USART_TypeDef ;
typedef scalar_t__ ITStatus ;


 int IS_USART_1236_PERIPH (TYPE_1__*) ;
 int IS_USART_ALL_PERIPH (TYPE_1__*) ;
 int IS_USART_GET_IT (int) ;
 int IT_MASK ;
 scalar_t__ RESET ;
 scalar_t__ SET ;
 int USART_IT_CTS ;
 int assert_param (int ) ;

ITStatus USART_GetITStatus(USART_TypeDef* USARTx, uint16_t USART_IT)
{
  uint32_t bitpos = 0x00, itmask = 0x00, usartreg = 0x00;
  ITStatus bitstatus = RESET;

  assert_param(IS_USART_ALL_PERIPH(USARTx));
  assert_param(IS_USART_GET_IT(USART_IT));


  if (USART_IT == USART_IT_CTS)
  {
    assert_param(IS_USART_1236_PERIPH(USARTx));
  }


  usartreg = (((uint8_t)USART_IT) >> 0x05);

  itmask = USART_IT & IT_MASK;
  itmask = (uint32_t)0x01 << itmask;

  if (usartreg == 0x01)
  {
    itmask &= USARTx->CR1;
  }
  else if (usartreg == 0x02)
  {
    itmask &= USARTx->CR2;
  }
  else
  {
    itmask &= USARTx->CR3;
  }

  bitpos = USART_IT >> 0x08;
  bitpos = (uint32_t)0x01 << bitpos;
  bitpos &= USARTx->SR;
  if ((itmask != (uint16_t)RESET)&&(bitpos != (uint16_t)RESET))
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }

  return bitstatus;
}
