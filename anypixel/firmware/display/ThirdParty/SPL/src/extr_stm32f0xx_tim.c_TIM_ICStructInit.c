
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int TIM_ICFilter; int TIM_ICPrescaler; int TIM_ICSelection; int TIM_ICPolarity; int TIM_Channel; } ;
typedef TYPE_1__ TIM_ICInitTypeDef ;


 int TIM_Channel_1 ;
 int TIM_ICPSC_DIV1 ;
 int TIM_ICPolarity_Rising ;
 int TIM_ICSelection_DirectTI ;

void TIM_ICStructInit(TIM_ICInitTypeDef* TIM_ICInitStruct)
{

  TIM_ICInitStruct->TIM_Channel = TIM_Channel_1;
  TIM_ICInitStruct->TIM_ICPolarity = TIM_ICPolarity_Rising;
  TIM_ICInitStruct->TIM_ICSelection = TIM_ICSelection_DirectTI;
  TIM_ICInitStruct->TIM_ICPrescaler = TIM_ICPSC_DIV1;
  TIM_ICInitStruct->TIM_ICFilter = 0x00;
}
