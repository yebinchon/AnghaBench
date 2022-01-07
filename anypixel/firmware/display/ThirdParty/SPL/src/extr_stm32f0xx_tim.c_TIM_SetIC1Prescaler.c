
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ CCMR1; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_IC_PRESCALER (scalar_t__) ;
 int IS_TIM_LIST4_PERIPH (TYPE_1__*) ;
 scalar_t__ TIM_CCMR1_IC1PSC ;
 int assert_param (int ) ;

void TIM_SetIC1Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC)
{

  assert_param(IS_TIM_LIST4_PERIPH(TIMx));
  assert_param(IS_TIM_IC_PRESCALER(TIM_ICPSC));


  TIMx->CCMR1 &= (uint16_t)~((uint16_t)TIM_CCMR1_IC1PSC);

  TIMx->CCMR1 |= TIM_ICPSC;
}
