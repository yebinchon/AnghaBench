
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ CR2; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_LIST9_PERIPH (TYPE_1__*) ;
 int IS_TIM_TRGO_SOURCE (scalar_t__) ;
 scalar_t__ TIM_CR2_MMS ;
 int assert_param (int ) ;

void TIM_SelectOutputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_TRGOSource)
{

  assert_param(IS_TIM_LIST9_PERIPH(TIMx));
  assert_param(IS_TIM_TRGO_SOURCE(TIM_TRGOSource));


  TIMx->CR2 &= (uint16_t)~((uint16_t)TIM_CR2_MMS);

  TIMx->CR2 |= TIM_TRGOSource;
}
