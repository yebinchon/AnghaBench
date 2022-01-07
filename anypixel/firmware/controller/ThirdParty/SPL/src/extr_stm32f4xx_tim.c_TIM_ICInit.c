
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ TIM_Channel; int TIM_ICPrescaler; int TIM_ICFilter; int TIM_ICSelection; int TIM_ICPolarity; } ;
typedef int TIM_TypeDef ;
typedef TYPE_1__ TIM_ICInitTypeDef ;


 int IS_TIM_IC_FILTER (int ) ;
 int IS_TIM_IC_POLARITY (int ) ;
 int IS_TIM_IC_PRESCALER (int ) ;
 int IS_TIM_IC_SELECTION (int ) ;
 int IS_TIM_LIST1_PERIPH (int *) ;
 int IS_TIM_LIST2_PERIPH (int *) ;
 int IS_TIM_LIST3_PERIPH (int *) ;
 int TI1_Config (int *,int ,int ,int ) ;
 int TI2_Config (int *,int ,int ,int ) ;
 int TI3_Config (int *,int ,int ,int ) ;
 int TI4_Config (int *,int ,int ,int ) ;
 scalar_t__ TIM_Channel_1 ;
 scalar_t__ TIM_Channel_2 ;
 scalar_t__ TIM_Channel_3 ;
 int TIM_SetIC1Prescaler (int *,int ) ;
 int TIM_SetIC2Prescaler (int *,int ) ;
 int TIM_SetIC3Prescaler (int *,int ) ;
 int TIM_SetIC4Prescaler (int *,int ) ;
 int assert_param (int ) ;

void TIM_ICInit(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct)
{

  assert_param(IS_TIM_LIST1_PERIPH(TIMx));
  assert_param(IS_TIM_IC_POLARITY(TIM_ICInitStruct->TIM_ICPolarity));
  assert_param(IS_TIM_IC_SELECTION(TIM_ICInitStruct->TIM_ICSelection));
  assert_param(IS_TIM_IC_PRESCALER(TIM_ICInitStruct->TIM_ICPrescaler));
  assert_param(IS_TIM_IC_FILTER(TIM_ICInitStruct->TIM_ICFilter));

  if (TIM_ICInitStruct->TIM_Channel == TIM_Channel_1)
  {

    TI1_Config(TIMx, TIM_ICInitStruct->TIM_ICPolarity,
               TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);

    TIM_SetIC1Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
  else if (TIM_ICInitStruct->TIM_Channel == TIM_Channel_2)
  {

    assert_param(IS_TIM_LIST2_PERIPH(TIMx));
    TI2_Config(TIMx, TIM_ICInitStruct->TIM_ICPolarity,
               TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);

    TIM_SetIC2Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
  else if (TIM_ICInitStruct->TIM_Channel == TIM_Channel_3)
  {

    assert_param(IS_TIM_LIST3_PERIPH(TIMx));
    TI3_Config(TIMx, TIM_ICInitStruct->TIM_ICPolarity,
               TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);

    TIM_SetIC3Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
  else
  {

    assert_param(IS_TIM_LIST3_PERIPH(TIMx));
    TI4_Config(TIMx, TIM_ICInitStruct->TIM_ICPolarity,
               TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);

    TIM_SetIC4Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
}
