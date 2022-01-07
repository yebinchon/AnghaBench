
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int USART_LastBit; int USART_CPHA; int USART_CPOL; int USART_Clock; } ;
typedef TYPE_1__ USART_ClockInitTypeDef ;


 int USART_CPHA_1Edge ;
 int USART_CPOL_Low ;
 int USART_Clock_Disable ;
 int USART_LastBit_Disable ;

void USART_ClockStructInit(USART_ClockInitTypeDef* USART_ClockInitStruct)
{

  USART_ClockInitStruct->USART_Clock = USART_Clock_Disable;
  USART_ClockInitStruct->USART_CPOL = USART_CPOL_Low;
  USART_ClockInitStruct->USART_CPHA = USART_CPHA_1Edge;
  USART_ClockInitStruct->USART_LastBit = USART_LastBit_Disable;
}
