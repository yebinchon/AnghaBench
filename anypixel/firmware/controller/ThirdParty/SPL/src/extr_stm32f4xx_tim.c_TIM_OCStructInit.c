
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int TIM_Pulse; int TIM_OCNIdleState; int TIM_OCIdleState; void* TIM_OCNPolarity; void* TIM_OCPolarity; int TIM_OutputNState; int TIM_OutputState; int TIM_OCMode; } ;
typedef TYPE_1__ TIM_OCInitTypeDef ;


 int TIM_OCIdleState_Reset ;
 int TIM_OCMode_Timing ;
 int TIM_OCNIdleState_Reset ;
 void* TIM_OCPolarity_High ;
 int TIM_OutputNState_Disable ;
 int TIM_OutputState_Disable ;

void TIM_OCStructInit(TIM_OCInitTypeDef* TIM_OCInitStruct)
{

  TIM_OCInitStruct->TIM_OCMode = TIM_OCMode_Timing;
  TIM_OCInitStruct->TIM_OutputState = TIM_OutputState_Disable;
  TIM_OCInitStruct->TIM_OutputNState = TIM_OutputNState_Disable;
  TIM_OCInitStruct->TIM_Pulse = 0x00000000;
  TIM_OCInitStruct->TIM_OCPolarity = TIM_OCPolarity_High;
  TIM_OCInitStruct->TIM_OCNPolarity = TIM_OCPolarity_High;
  TIM_OCInitStruct->TIM_OCIdleState = TIM_OCIdleState_Reset;
  TIM_OCInitStruct->TIM_OCNIdleState = TIM_OCNIdleState_Reset;
}
