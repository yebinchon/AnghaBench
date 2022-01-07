
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int CCER; int CCMR2; } ;
typedef TYPE_1__ TIM_TypeDef ;


 scalar_t__ TIM_CCER_CC3E ;
 int TIM_CCER_CC3NP ;
 int TIM_CCER_CC3P ;
 scalar_t__ TIM_CCMR2_CC3S ;
 scalar_t__ TIM_CCMR2_IC3F ;

__attribute__((used)) static void TI3_Config(TIM_TypeDef* TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
                       uint16_t TIM_ICFilter)
{
  uint16_t tmpccmr2 = 0, tmpccer = 0, tmp = 0;

  TIMx->CCER &= (uint16_t)~((uint16_t)TIM_CCER_CC3E);
  tmpccmr2 = TIMx->CCMR2;
  tmpccer = TIMx->CCER;
  tmp = (uint16_t)(TIM_ICPolarity << 8);

  tmpccmr2 &= (uint16_t)(((uint16_t)~((uint16_t)TIM_CCMR2_CC3S)) & ((uint16_t)~((uint16_t)TIM_CCMR2_IC3F)));
  tmpccmr2 |= (uint16_t)(TIM_ICSelection | (uint16_t)(TIM_ICFilter << (uint16_t)4));

  tmpccer &= (uint16_t)~((uint16_t)(TIM_CCER_CC3P | TIM_CCER_CC3NP));
  tmpccer |= (uint16_t)(tmp | (uint16_t)TIM_CCER_CC3E);

  TIMx->CCMR2 = tmpccmr2;
  TIMx->CCER = tmpccer;
}
