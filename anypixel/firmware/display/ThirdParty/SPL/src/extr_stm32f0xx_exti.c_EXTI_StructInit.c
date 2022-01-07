
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int EXTI_LineCmd; int EXTI_Trigger; int EXTI_Mode; int EXTI_Line; } ;
typedef TYPE_1__ EXTI_InitTypeDef ;


 int DISABLE ;
 int EXTI_LINENONE ;
 int EXTI_Mode_Interrupt ;
 int EXTI_Trigger_Falling ;

void EXTI_StructInit(EXTI_InitTypeDef* EXTI_InitStruct)
{
  EXTI_InitStruct->EXTI_Line = EXTI_LINENONE;
  EXTI_InitStruct->EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStruct->EXTI_Trigger = EXTI_Trigger_Falling;
  EXTI_InitStruct->EXTI_LineCmd = DISABLE;
}
