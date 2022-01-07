
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ TIM_ICPolarity; scalar_t__ TIM_ICSelection; scalar_t__ TIM_Channel; int TIM_ICPrescaler; int TIM_ICFilter; } ;
typedef int TIM_TypeDef ;
typedef TYPE_1__ TIM_ICInitTypeDef ;


 int IS_TIM_LIST2_PERIPH (int *) ;
 int TI1_Config (int *,scalar_t__,scalar_t__,int ) ;
 int TI2_Config (int *,scalar_t__,scalar_t__,int ) ;
 scalar_t__ TIM_Channel_1 ;
 scalar_t__ TIM_ICPolarity_Falling ;
 scalar_t__ TIM_ICPolarity_Rising ;
 scalar_t__ TIM_ICSelection_DirectTI ;
 scalar_t__ TIM_ICSelection_IndirectTI ;
 int TIM_SetIC1Prescaler (int *,int ) ;
 int TIM_SetIC2Prescaler (int *,int ) ;
 int assert_param (int ) ;

void TIM_PWMIConfig(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct)
{
  uint16_t icoppositepolarity = TIM_ICPolarity_Rising;
  uint16_t icoppositeselection = TIM_ICSelection_DirectTI;


  assert_param(IS_TIM_LIST2_PERIPH(TIMx));


  if (TIM_ICInitStruct->TIM_ICPolarity == TIM_ICPolarity_Rising)
  {
    icoppositepolarity = TIM_ICPolarity_Falling;
  }
  else
  {
    icoppositepolarity = TIM_ICPolarity_Rising;
  }

  if (TIM_ICInitStruct->TIM_ICSelection == TIM_ICSelection_DirectTI)
  {
    icoppositeselection = TIM_ICSelection_IndirectTI;
  }
  else
  {
    icoppositeselection = TIM_ICSelection_DirectTI;
  }
  if (TIM_ICInitStruct->TIM_Channel == TIM_Channel_1)
  {

    TI1_Config(TIMx, TIM_ICInitStruct->TIM_ICPolarity, TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);

    TIM_SetIC1Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);

    TI2_Config(TIMx, icoppositepolarity, icoppositeselection, TIM_ICInitStruct->TIM_ICFilter);

    TIM_SetIC2Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
  else
  {

    TI2_Config(TIMx, TIM_ICInitStruct->TIM_ICPolarity, TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);

    TIM_SetIC2Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);

    TI1_Config(TIMx, icoppositepolarity, icoppositeselection, TIM_ICInitStruct->TIM_ICFilter);

    TIM_SetIC1Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
}
