
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int CCMR1; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_LIST1_PERIPH (TYPE_1__*) ;
 int IS_TIM_OCPRELOAD_STATE (int ) ;
 scalar_t__ TIM_CCMR1_OC1PE ;
 int assert_param (int ) ;

void TIM_OC1PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload)
{
  uint16_t tmpccmr1 = 0;


  assert_param(IS_TIM_LIST1_PERIPH(TIMx));
  assert_param(IS_TIM_OCPRELOAD_STATE(TIM_OCPreload));

  tmpccmr1 = TIMx->CCMR1;


  tmpccmr1 &= (uint16_t)(~TIM_CCMR1_OC1PE);


  tmpccmr1 |= TIM_OCPreload;


  TIMx->CCMR1 = tmpccmr1;
}
