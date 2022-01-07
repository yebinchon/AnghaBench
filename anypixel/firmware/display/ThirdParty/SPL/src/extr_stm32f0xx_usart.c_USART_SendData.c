
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int TDR; } ;
typedef TYPE_1__ USART_TypeDef ;


 int IS_USART_ALL_PERIPH (TYPE_1__*) ;
 int IS_USART_DATA (int) ;
 int assert_param (int ) ;

void USART_SendData(USART_TypeDef* USARTx, uint16_t Data)
{

  assert_param(IS_USART_ALL_PERIPH(USARTx));
  assert_param(IS_USART_DATA(Data));


  USARTx->TDR = (Data & (uint16_t)0x01FF);
}
