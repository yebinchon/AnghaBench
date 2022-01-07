
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int CR1; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_CKD_DIV (int ) ;
 int IS_TIM_LIST1_PERIPH (TYPE_1__*) ;
 scalar_t__ TIM_CR1_CKD ;
 int assert_param (int ) ;

void TIM_SetClockDivision(TIM_TypeDef* TIMx, uint16_t TIM_CKD)
{

  assert_param(IS_TIM_LIST1_PERIPH(TIMx));
  assert_param(IS_TIM_CKD_DIV(TIM_CKD));


  TIMx->CR1 &= (uint16_t)(~TIM_CR1_CKD);


  TIMx->CR1 |= TIM_CKD;
}
