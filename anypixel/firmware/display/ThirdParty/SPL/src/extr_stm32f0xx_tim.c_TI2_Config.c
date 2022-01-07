
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int CCER; int CCMR1; } ;
typedef TYPE_1__ TIM_TypeDef ;


 scalar_t__ TIM_CCER_CC2E ;
 int TIM_CCER_CC2NP ;
 int TIM_CCER_CC2P ;
 scalar_t__ TIM_CCMR1_CC2S ;
 scalar_t__ TIM_CCMR1_IC2F ;

__attribute__((used)) static void TI2_Config(TIM_TypeDef* TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
                       uint16_t TIM_ICFilter)
{
  uint16_t tmpccmr1 = 0, tmpccer = 0, tmp = 0;

  TIMx->CCER &= (uint16_t)~((uint16_t)TIM_CCER_CC2E);
  tmpccmr1 = TIMx->CCMR1;
  tmpccer = TIMx->CCER;
  tmp = (uint16_t)(TIM_ICPolarity << 4);

  tmpccmr1 &= (uint16_t)(((uint16_t)~((uint16_t)TIM_CCMR1_CC2S)) & ((uint16_t)~((uint16_t)TIM_CCMR1_IC2F)));
  tmpccmr1 |= (uint16_t)(TIM_ICFilter << 12);
  tmpccmr1 |= (uint16_t)(TIM_ICSelection << 8);

  tmpccer &= (uint16_t)~((uint16_t)(TIM_CCER_CC2P | TIM_CCER_CC2NP));
  tmpccer |= (uint16_t)(tmp | (uint16_t)TIM_CCER_CC2E);

  TIMx->CCMR1 = tmpccmr1 ;
  TIMx->CCER = tmpccer;
}
