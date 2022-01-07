
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int GTPR; } ;
typedef TYPE_1__ USART_TypeDef ;


 int IS_USART_1236_PERIPH (TYPE_1__*) ;
 int USART_GTPR_PSC ;
 int assert_param (int ) ;

void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime)
{

  assert_param(IS_USART_1236_PERIPH(USARTx));


  USARTx->GTPR &= USART_GTPR_PSC;

  USARTx->GTPR |= (uint16_t)((uint16_t)USART_GuardTime << 0x08);
}
