
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIM_TypeDef ;


 int DISABLE ;
 int ENABLE ;
 int IS_TIM_ALL_PERIPH (int *) ;
 int RCC_APB1PeriphResetCmd (int ,int ) ;
 int RCC_APB1Periph_TIM14 ;
 int RCC_APB1Periph_TIM2 ;
 int RCC_APB1Periph_TIM3 ;
 int RCC_APB1Periph_TIM6 ;
 int RCC_APB1Periph_TIM7 ;
 int RCC_APB2PeriphResetCmd (int ,int ) ;
 int RCC_APB2Periph_TIM1 ;
 int RCC_APB2Periph_TIM15 ;
 int RCC_APB2Periph_TIM16 ;
 int RCC_APB2Periph_TIM17 ;
 int * TIM1 ;
 int * TIM14 ;
 int * TIM15 ;
 int * TIM16 ;
 int * TIM17 ;
 int * TIM2 ;
 int * TIM3 ;
 int * TIM6 ;
 int * TIM7 ;
 int assert_param (int ) ;

void TIM_DeInit(TIM_TypeDef* TIMx)
{

  assert_param(IS_TIM_ALL_PERIPH(TIMx));

  if (TIMx == TIM1)
  {
    RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM1, ENABLE);
    RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM1, DISABLE);
  }
  else if (TIMx == TIM2)
  {
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM2, ENABLE);
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM2, DISABLE);
  }
  else if (TIMx == TIM3)
  {
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM3, ENABLE);
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM3, DISABLE);
  }
  else if (TIMx == TIM6)
  {
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM6, ENABLE);
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM6, DISABLE);
  }
  else if (TIMx == TIM7)
  {
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM7, ENABLE);
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM7, DISABLE);
  }
  else if (TIMx == TIM14)
  {
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM14, ENABLE);
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM14, DISABLE);
  }
  else if (TIMx == TIM15)
  {
    RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM15, ENABLE);
    RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM15, DISABLE);
  }
  else if (TIMx == TIM16)
  {
    RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM16, ENABLE);
    RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM16, DISABLE);
  }
  else
  {
    if (TIMx == TIM17)
    {
      RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM17, ENABLE);
      RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM17, DISABLE);
    }
  }

}
