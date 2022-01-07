
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int RTOR; } ;
typedef TYPE_1__ USART_TypeDef ;


 int IS_USART_12_PERIPH (TYPE_1__*) ;
 scalar_t__ USART_RTOR_BLEN ;
 int assert_param (int ) ;

void USART_SetBlockLength(USART_TypeDef* USARTx, uint8_t USART_BlockLength)
{

  assert_param(IS_USART_12_PERIPH(USARTx));


  USARTx->RTOR &= (uint32_t)~((uint32_t)USART_RTOR_BLEN);

  USARTx->RTOR |= (uint32_t)((uint32_t)USART_BlockLength << 0x18);
}
