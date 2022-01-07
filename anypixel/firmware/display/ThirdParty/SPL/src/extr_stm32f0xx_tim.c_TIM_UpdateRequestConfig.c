
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ CR1; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_ALL_PERIPH (TYPE_1__*) ;
 int IS_TIM_UPDATE_SOURCE (scalar_t__) ;
 scalar_t__ TIM_CR1_URS ;
 scalar_t__ TIM_UpdateSource_Global ;
 int assert_param (int ) ;

void TIM_UpdateRequestConfig(TIM_TypeDef* TIMx, uint16_t TIM_UpdateSource)
{

  assert_param(IS_TIM_ALL_PERIPH(TIMx));
  assert_param(IS_TIM_UPDATE_SOURCE(TIM_UpdateSource));

  if (TIM_UpdateSource != TIM_UpdateSource_Global)
  {

    TIMx->CR1 |= TIM_CR1_URS;
  }
  else
  {

    TIMx->CR1 &= (uint16_t)~((uint16_t)TIM_CR1_URS);
  }
}
