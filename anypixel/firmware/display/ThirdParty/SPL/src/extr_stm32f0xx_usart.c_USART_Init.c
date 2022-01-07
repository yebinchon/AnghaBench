
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_10__ {int CR1; int CR2; int CR3; int BRR; } ;
typedef TYPE_1__ USART_TypeDef ;
struct TYPE_11__ {int USART_BaudRate; int USART_Parity; int USART_Mode; int USART_HardwareFlowControl; scalar_t__ USART_WordLength; scalar_t__ USART_StopBits; } ;
typedef TYPE_2__ USART_InitTypeDef ;
struct TYPE_12__ {int USART1CLK_Frequency; int USART2CLK_Frequency; int PCLK_Frequency; } ;
typedef TYPE_3__ RCC_ClocksTypeDef ;


 scalar_t__ CR1_CLEAR_MASK ;
 scalar_t__ CR3_CLEAR_MASK ;
 int IS_USART_ALL_PERIPH (TYPE_1__*) ;
 int IS_USART_BAUDRATE (int) ;
 int IS_USART_HARDWARE_FLOW_CONTROL (int) ;
 int IS_USART_MODE (int) ;
 int IS_USART_PARITY (int) ;
 int IS_USART_STOPBITS (scalar_t__) ;
 int IS_USART_WORD_LENGTH (scalar_t__) ;
 int RCC_GetClocksFreq (TYPE_3__*) ;
 TYPE_1__* USART1 ;
 TYPE_1__* USART2 ;
 int USART_CR1_OVER8 ;
 scalar_t__ USART_CR1_UE ;
 scalar_t__ USART_CR2_STOP ;
 int assert_param (int ) ;

void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct)
{
  uint32_t divider = 0, apbclock = 0, tmpreg = 0;
  RCC_ClocksTypeDef RCC_ClocksStatus;


  assert_param(IS_USART_ALL_PERIPH(USARTx));
  assert_param(IS_USART_BAUDRATE(USART_InitStruct->USART_BaudRate));
  assert_param(IS_USART_WORD_LENGTH(USART_InitStruct->USART_WordLength));
  assert_param(IS_USART_STOPBITS(USART_InitStruct->USART_StopBits));
  assert_param(IS_USART_PARITY(USART_InitStruct->USART_Parity));
  assert_param(IS_USART_MODE(USART_InitStruct->USART_Mode));
  assert_param(IS_USART_HARDWARE_FLOW_CONTROL(USART_InitStruct->USART_HardwareFlowControl));


  USARTx->CR1 &= (uint32_t)~((uint32_t)USART_CR1_UE);


  tmpreg = USARTx->CR2;

  tmpreg &= (uint32_t)~((uint32_t)USART_CR2_STOP);



  tmpreg |= (uint32_t)USART_InitStruct->USART_StopBits;


  USARTx->CR2 = tmpreg;


  tmpreg = USARTx->CR1;

  tmpreg &= (uint32_t)~((uint32_t)CR1_CLEAR_MASK);





  tmpreg |= (uint32_t)USART_InitStruct->USART_WordLength | USART_InitStruct->USART_Parity |
    USART_InitStruct->USART_Mode;


  USARTx->CR1 = tmpreg;


  tmpreg = USARTx->CR3;

  tmpreg &= (uint32_t)~((uint32_t)CR3_CLEAR_MASK);



  tmpreg |= USART_InitStruct->USART_HardwareFlowControl;


  USARTx->CR3 = tmpreg;



  RCC_GetClocksFreq(&RCC_ClocksStatus);

  if (USARTx == USART1)
  {
    apbclock = RCC_ClocksStatus.USART1CLK_Frequency;
  }
  else if (USARTx == USART2)
  {
    apbclock = RCC_ClocksStatus.USART2CLK_Frequency;
  }
  else
  {
    apbclock = RCC_ClocksStatus.PCLK_Frequency;
  }


  if ((USARTx->CR1 & USART_CR1_OVER8) != 0)
  {

    divider = (uint32_t)((2 * apbclock) / (USART_InitStruct->USART_BaudRate));
    tmpreg = (uint32_t)((2 * apbclock) % (USART_InitStruct->USART_BaudRate));
  }
  else
  {

    divider = (uint32_t)((apbclock) / (USART_InitStruct->USART_BaudRate));
    tmpreg = (uint32_t)((apbclock) % (USART_InitStruct->USART_BaudRate));
  }


  if (tmpreg >= (USART_InitStruct->USART_BaudRate) / 2)
  {
    divider++;
  }


  if ((USARTx->CR1 & USART_CR1_OVER8) != 0)
  {

    tmpreg = (divider & (uint16_t)0x000F) >> 1;


    divider = (divider & (uint16_t)0xFFF0) | tmpreg;
  }


  USARTx->BRR = (uint16_t)divider;
}
