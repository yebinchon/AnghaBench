
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int CCMR2; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_IC_PRESCALER (int ) ;
 int IS_TIM_LIST3_PERIPH (TYPE_1__*) ;
 scalar_t__ TIM_CCMR2_IC3PSC ;
 int assert_param (int ) ;

void TIM_SetIC3Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC)
{

  assert_param(IS_TIM_LIST3_PERIPH(TIMx));
  assert_param(IS_TIM_IC_PRESCALER(TIM_ICPSC));


  TIMx->CCMR2 &= (uint16_t)~TIM_CCMR2_IC3PSC;


  TIMx->CCMR2 |= TIM_ICPSC;
}
