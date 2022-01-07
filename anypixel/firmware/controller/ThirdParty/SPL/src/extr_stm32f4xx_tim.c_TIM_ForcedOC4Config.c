
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int CCMR2; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_FORCED_ACTION (int) ;
 int IS_TIM_LIST3_PERIPH (TYPE_1__*) ;
 scalar_t__ TIM_CCMR2_OC4M ;
 int assert_param (int ) ;

void TIM_ForcedOC4Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction)
{
  uint16_t tmpccmr2 = 0;


  assert_param(IS_TIM_LIST3_PERIPH(TIMx));
  assert_param(IS_TIM_FORCED_ACTION(TIM_ForcedAction));
  tmpccmr2 = TIMx->CCMR2;


  tmpccmr2 &= (uint16_t)~TIM_CCMR2_OC4M;


  tmpccmr2 |= (uint16_t)(TIM_ForcedAction << 8);


  TIMx->CCMR2 = tmpccmr2;
}
