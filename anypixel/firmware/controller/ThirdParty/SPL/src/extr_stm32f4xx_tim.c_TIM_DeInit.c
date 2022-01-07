
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIM_TypeDef ;


 int DISABLE ;
 int ENABLE ;
 int IS_TIM_ALL_PERIPH (int *) ;
 int RCC_APB1PeriphResetCmd (int ,int ) ;
 int RCC_APB1Periph_TIM12 ;
 int RCC_APB1Periph_TIM13 ;
 int RCC_APB1Periph_TIM14 ;
 int RCC_APB1Periph_TIM2 ;
 int RCC_APB1Periph_TIM3 ;
 int RCC_APB1Periph_TIM4 ;
 int RCC_APB1Periph_TIM5 ;
 int RCC_APB1Periph_TIM6 ;
 int RCC_APB1Periph_TIM7 ;
 int RCC_APB2PeriphResetCmd (int ,int ) ;
 int RCC_APB2Periph_TIM1 ;
 int RCC_APB2Periph_TIM10 ;
 int RCC_APB2Periph_TIM11 ;
 int RCC_APB2Periph_TIM8 ;
 int RCC_APB2Periph_TIM9 ;
 int * TIM1 ;
 int * TIM10 ;
 int * TIM11 ;
 int * TIM12 ;
 int * TIM13 ;
 int * TIM14 ;
 int * TIM2 ;
 int * TIM3 ;
 int * TIM4 ;
 int * TIM5 ;
 int * TIM6 ;
 int * TIM7 ;
 int * TIM8 ;
 int * TIM9 ;
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
  else if (TIMx == TIM4)
  {
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM4, ENABLE);
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM4, DISABLE);
  }
  else if (TIMx == TIM5)
  {
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM5, ENABLE);
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM5, DISABLE);
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
  else if (TIMx == TIM8)
  {
    RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM8, ENABLE);
    RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM8, DISABLE);
  }
  else if (TIMx == TIM9)
  {
    RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM9, ENABLE);
    RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM9, DISABLE);
   }
  else if (TIMx == TIM10)
  {
    RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM10, ENABLE);
    RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM10, DISABLE);
  }
  else if (TIMx == TIM11)
  {
    RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM11, ENABLE);
    RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM11, DISABLE);
  }
  else if (TIMx == TIM12)
  {
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM12, ENABLE);
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM12, DISABLE);
  }
  else if (TIMx == TIM13)
  {
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM13, ENABLE);
    RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM13, DISABLE);
  }
  else
  {
    if (TIMx == TIM14)
    {
      RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM14, ENABLE);
      RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM14, DISABLE);
    }
  }
}
