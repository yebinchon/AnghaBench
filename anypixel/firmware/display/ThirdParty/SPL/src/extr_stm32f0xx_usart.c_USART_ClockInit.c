
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ CR2; } ;
typedef TYPE_1__ USART_TypeDef ;
struct TYPE_7__ {int USART_Clock; int USART_CPOL; int USART_CPHA; int USART_LastBit; } ;
typedef TYPE_2__ USART_ClockInitTypeDef ;


 scalar_t__ CR2_CLOCK_CLEAR_MASK ;
 int IS_USART_ALL_PERIPH (TYPE_1__*) ;
 int IS_USART_CLOCK (int) ;
 int IS_USART_CPHA (int) ;
 int IS_USART_CPOL (int) ;
 int IS_USART_LASTBIT (int) ;
 int assert_param (int ) ;

void USART_ClockInit(USART_TypeDef* USARTx, USART_ClockInitTypeDef* USART_ClockInitStruct)
{
  uint32_t tmpreg = 0;

  assert_param(IS_USART_ALL_PERIPH(USARTx));
  assert_param(IS_USART_CLOCK(USART_ClockInitStruct->USART_Clock));
  assert_param(IS_USART_CPOL(USART_ClockInitStruct->USART_CPOL));
  assert_param(IS_USART_CPHA(USART_ClockInitStruct->USART_CPHA));
  assert_param(IS_USART_LASTBIT(USART_ClockInitStruct->USART_LastBit));

  tmpreg = USARTx->CR2;

  tmpreg &= (uint32_t)~((uint32_t)CR2_CLOCK_CLEAR_MASK);





  tmpreg |= (uint32_t)(USART_ClockInitStruct->USART_Clock | USART_ClockInitStruct->USART_CPOL |
                       USART_ClockInitStruct->USART_CPHA | USART_ClockInitStruct->USART_LastBit);

  USARTx->CR2 = tmpreg;
}
