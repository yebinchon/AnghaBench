
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USART_TypeDef ;


 int DISABLE ;
 int ENABLE ;
 int IS_USART_ALL_PERIPH (int *) ;
 int RCC_APB1PeriphResetCmd (int ,int ) ;
 int RCC_APB1Periph_USART2 ;
 int RCC_APB1Periph_USART3 ;
 int RCC_APB1Periph_USART4 ;
 int RCC_APB2PeriphResetCmd (int ,int ) ;
 int RCC_APB2Periph_USART1 ;
 int * USART1 ;
 int * USART2 ;
 int * USART3 ;
 int * USART4 ;
 int assert_param (int ) ;

void USART_DeInit(USART_TypeDef* USARTx)
{

  assert_param(IS_USART_ALL_PERIPH(USARTx));

  if (USARTx == USART1)
  {
    RCC_APB2PeriphResetCmd(RCC_APB2Periph_USART1, ENABLE);
    RCC_APB2PeriphResetCmd(RCC_APB2Periph_USART1, DISABLE);
  }
  else if (USARTx == USART2)
  {
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_USART2, ENABLE);
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_USART2, DISABLE);
  }
  else if (USARTx == USART3)
  {
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_USART3, ENABLE);
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_USART3, DISABLE);
  }
  else
  {
    if (USARTx == USART4)
    {
      RCC_APB1PeriphResetCmd(RCC_APB1Periph_USART4, ENABLE);
      RCC_APB1PeriphResetCmd(RCC_APB1Periph_USART4, DISABLE);
    }
  }
}
