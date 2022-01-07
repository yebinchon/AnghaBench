
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int CCMR1; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_LIST2_PERIPH (TYPE_1__*) ;
 int IS_TIM_OCFAST_STATE (int) ;
 scalar_t__ TIM_CCMR1_OC2FE ;
 int assert_param (int ) ;

void TIM_OC2FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast)
{
  uint16_t tmpccmr1 = 0;


  assert_param(IS_TIM_LIST2_PERIPH(TIMx));
  assert_param(IS_TIM_OCFAST_STATE(TIM_OCFast));


  tmpccmr1 = TIMx->CCMR1;


  tmpccmr1 &= (uint16_t)(~TIM_CCMR1_OC2FE);


  tmpccmr1 |= (uint16_t)(TIM_OCFast << 8);


  TIMx->CCMR1 = tmpccmr1;
}
