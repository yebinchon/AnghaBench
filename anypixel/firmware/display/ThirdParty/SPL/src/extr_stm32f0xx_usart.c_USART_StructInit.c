
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int USART_BaudRate; int USART_Mode; int USART_HardwareFlowControl; int USART_Parity; int USART_StopBits; int USART_WordLength; } ;
typedef TYPE_1__ USART_InitTypeDef ;


 int USART_HardwareFlowControl_None ;
 int USART_Mode_Rx ;
 int USART_Mode_Tx ;
 int USART_Parity_No ;
 int USART_StopBits_1 ;
 int USART_WordLength_8b ;

void USART_StructInit(USART_InitTypeDef* USART_InitStruct)
{

  USART_InitStruct->USART_BaudRate = 9600;
  USART_InitStruct->USART_WordLength = USART_WordLength_8b;
  USART_InitStruct->USART_StopBits = USART_StopBits_1;
  USART_InitStruct->USART_Parity = USART_Parity_No ;
  USART_InitStruct->USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
  USART_InitStruct->USART_HardwareFlowControl = USART_HardwareFlowControl_None;
}
