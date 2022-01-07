
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef void* uint16_t ;
struct TYPE_11__ {int CR2; int CR1; int CR3; void* BRR; } ;
typedef TYPE_1__ USART_TypeDef ;
struct TYPE_12__ {int USART_BaudRate; int USART_Parity; int USART_Mode; int USART_HardwareFlowControl; scalar_t__ USART_WordLength; scalar_t__ USART_StopBits; } ;
typedef TYPE_2__ USART_InitTypeDef ;
struct TYPE_13__ {int PCLK2_Frequency; int PCLK1_Frequency; } ;
typedef TYPE_3__ RCC_ClocksTypeDef ;


 scalar_t__ CR1_CLEAR_MASK ;
 scalar_t__ CR3_CLEAR_MASK ;
 int IS_USART_1236_PERIPH (TYPE_1__*) ;
 int IS_USART_ALL_PERIPH (TYPE_1__*) ;
 int IS_USART_BAUDRATE (int) ;
 int IS_USART_HARDWARE_FLOW_CONTROL (int) ;
 int IS_USART_MODE (int) ;
 int IS_USART_PARITY (int) ;
 int IS_USART_STOPBITS (scalar_t__) ;
 int IS_USART_WORD_LENGTH (scalar_t__) ;
 int RCC_GetClocksFreq (TYPE_3__*) ;
 TYPE_1__* USART1 ;
 TYPE_1__* USART6 ;
 int USART_CR1_OVER8 ;
 scalar_t__ USART_CR2_STOP ;
 int USART_HardwareFlowControl_None ;
 int assert_param (int ) ;

void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct)
{
  uint32_t tmpreg = 0x00, apbclock = 0x00;
  uint32_t integerdivider = 0x00;
  uint32_t fractionaldivider = 0x00;
  RCC_ClocksTypeDef RCC_ClocksStatus;


  assert_param(IS_USART_ALL_PERIPH(USARTx));
  assert_param(IS_USART_BAUDRATE(USART_InitStruct->USART_BaudRate));
  assert_param(IS_USART_WORD_LENGTH(USART_InitStruct->USART_WordLength));
  assert_param(IS_USART_STOPBITS(USART_InitStruct->USART_StopBits));
  assert_param(IS_USART_PARITY(USART_InitStruct->USART_Parity));
  assert_param(IS_USART_MODE(USART_InitStruct->USART_Mode));
  assert_param(IS_USART_HARDWARE_FLOW_CONTROL(USART_InitStruct->USART_HardwareFlowControl));


  if (USART_InitStruct->USART_HardwareFlowControl != USART_HardwareFlowControl_None)
  {
    assert_param(IS_USART_1236_PERIPH(USARTx));
  }


  tmpreg = USARTx->CR2;


  tmpreg &= (uint32_t)~((uint32_t)USART_CR2_STOP);



  tmpreg |= (uint32_t)USART_InitStruct->USART_StopBits;


  USARTx->CR2 = (uint16_t)tmpreg;


  tmpreg = USARTx->CR1;


  tmpreg &= (uint32_t)~((uint32_t)CR1_CLEAR_MASK);





  tmpreg |= (uint32_t)USART_InitStruct->USART_WordLength | USART_InitStruct->USART_Parity |
            USART_InitStruct->USART_Mode;


  USARTx->CR1 = (uint16_t)tmpreg;


  tmpreg = USARTx->CR3;


  tmpreg &= (uint32_t)~((uint32_t)CR3_CLEAR_MASK);



  tmpreg |= USART_InitStruct->USART_HardwareFlowControl;


  USARTx->CR3 = (uint16_t)tmpreg;



  RCC_GetClocksFreq(&RCC_ClocksStatus);

  if ((USARTx == USART1) || (USARTx == USART6))
  {
    apbclock = RCC_ClocksStatus.PCLK2_Frequency;
  }
  else
  {
    apbclock = RCC_ClocksStatus.PCLK1_Frequency;
  }


  if ((USARTx->CR1 & USART_CR1_OVER8) != 0)
  {

    integerdivider = ((25 * apbclock) / (2 * (USART_InitStruct->USART_BaudRate)));
  }
  else
  {

    integerdivider = ((25 * apbclock) / (4 * (USART_InitStruct->USART_BaudRate)));
  }
  tmpreg = (integerdivider / 100) << 4;


  fractionaldivider = integerdivider - (100 * (tmpreg >> 4));


  if ((USARTx->CR1 & USART_CR1_OVER8) != 0)
  {
    tmpreg |= ((((fractionaldivider * 8) + 50) / 100)) & ((uint8_t)0x07);
  }
  else
  {
    tmpreg |= ((((fractionaldivider * 16) + 50) / 100)) & ((uint8_t)0x0F);
  }


  USARTx->BRR = (uint16_t)tmpreg;
}
