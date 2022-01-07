
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {void* EXTI_LineCmd; int EXTI_Trigger; int EXTI_Mode; int EXTI_Line; } ;
struct TYPE_8__ {int GPIO_Pin; int GPIO_PuPd; int GPIO_Mode; } ;
struct TYPE_7__ {int NVIC_IRQChannelPreemptionPriority; void* NVIC_IRQChannelCmd; int NVIC_IRQChannel; } ;
typedef TYPE_1__ NVIC_InitTypeDef ;
typedef TYPE_2__ GPIO_InitTypeDef ;
typedef TYPE_3__ EXTI_InitTypeDef ;


 void* ENABLE ;
 int ETH_LINK_EXTI_LINE ;
 int ETH_LINK_EXTI_PIN_SOURCE ;
 int ETH_LINK_EXTI_PORT_SOURCE ;
 int ETH_LINK_GPIO_CLK ;
 int ETH_LINK_GPIO_PORT ;
 int ETH_LINK_PIN ;
 int EXTI15_10_IRQn ;
 int EXTI_Init (TYPE_3__*) ;
 int EXTI_Mode_Interrupt ;
 int EXTI_Trigger_Falling ;
 int GPIO_Init (int ,TYPE_2__*) ;
 int GPIO_Mode_IN ;
 int GPIO_PuPd_NOPULL ;
 int NVIC_Init (TYPE_1__*) ;
 int RCC_AHB1PeriphClockCmd (int ,void*) ;
 int RCC_APB2PeriphClockCmd (int ,void*) ;
 int RCC_APB2Periph_SYSCFG ;
 int SYSCFG_EXTILineConfig (int ,int ) ;

void Eth_Link_EXTIConfig(void)
{
  GPIO_InitTypeDef GPIO_InitStructure;
  EXTI_InitTypeDef EXTI_InitStructure;
  NVIC_InitTypeDef NVIC_InitStructure;


  RCC_AHB1PeriphClockCmd(ETH_LINK_GPIO_CLK, ENABLE);
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);


  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
  GPIO_InitStructure.GPIO_Pin = ETH_LINK_PIN;
  GPIO_Init(ETH_LINK_GPIO_PORT, &GPIO_InitStructure);


  SYSCFG_EXTILineConfig(ETH_LINK_EXTI_PORT_SOURCE, ETH_LINK_EXTI_PIN_SOURCE);


  EXTI_InitStructure.EXTI_Line = ETH_LINK_EXTI_LINE;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);


  NVIC_InitStructure.NVIC_IRQChannel = EXTI15_10_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}
