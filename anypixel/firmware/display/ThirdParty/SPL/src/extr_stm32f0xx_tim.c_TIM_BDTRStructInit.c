
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int TIM_DeadTime; int TIM_AutomaticOutput; int TIM_BreakPolarity; int TIM_Break; int TIM_LOCKLevel; int TIM_OSSIState; int TIM_OSSRState; } ;
typedef TYPE_1__ TIM_BDTRInitTypeDef ;


 int TIM_AutomaticOutput_Disable ;
 int TIM_BreakPolarity_Low ;
 int TIM_Break_Disable ;
 int TIM_LOCKLevel_OFF ;
 int TIM_OSSIState_Disable ;
 int TIM_OSSRState_Disable ;

void TIM_BDTRStructInit(TIM_BDTRInitTypeDef* TIM_BDTRInitStruct)
{

  TIM_BDTRInitStruct->TIM_OSSRState = TIM_OSSRState_Disable;
  TIM_BDTRInitStruct->TIM_OSSIState = TIM_OSSIState_Disable;
  TIM_BDTRInitStruct->TIM_LOCKLevel = TIM_LOCKLevel_OFF;
  TIM_BDTRInitStruct->TIM_DeadTime = 0x00;
  TIM_BDTRInitStruct->TIM_Break = TIM_Break_Disable;
  TIM_BDTRInitStruct->TIM_BreakPolarity = TIM_BreakPolarity_Low;
  TIM_BDTRInitStruct->TIM_AutomaticOutput = TIM_AutomaticOutput_Disable;
}
