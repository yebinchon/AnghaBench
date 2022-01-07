
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int CCER; int CCMR2; } ;
typedef TYPE_1__ TIM_TypeDef ;


 scalar_t__ TIM_CCER_CC4E ;
 int TIM_CCER_CC4NP ;
 int TIM_CCER_CC4P ;
 scalar_t__ TIM_CCMR2_CC4S ;
 scalar_t__ TIM_CCMR2_IC4F ;

__attribute__((used)) static void TI4_Config(TIM_TypeDef* TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
                       uint16_t TIM_ICFilter)
{
  uint16_t tmpccmr2 = 0, tmpccer = 0, tmp = 0;


  TIMx->CCER &= (uint16_t)~((uint16_t)TIM_CCER_CC4E);
  tmpccmr2 = TIMx->CCMR2;
  tmpccer = TIMx->CCER;
  tmp = (uint16_t)(TIM_ICPolarity << 12);

  tmpccmr2 &= (uint16_t)((uint16_t)(~(uint16_t)TIM_CCMR2_CC4S) & ((uint16_t)~((uint16_t)TIM_CCMR2_IC4F)));
  tmpccmr2 |= (uint16_t)(TIM_ICSelection << 8);
  tmpccmr2 |= (uint16_t)(TIM_ICFilter << 12);

  tmpccer &= (uint16_t)~((uint16_t)(TIM_CCER_CC4P | TIM_CCER_CC4NP));
  tmpccer |= (uint16_t)(tmp | (uint16_t)TIM_CCER_CC4E);

  TIMx->CCMR2 = tmpccmr2;
  TIMx->CCER = tmpccer;
}
