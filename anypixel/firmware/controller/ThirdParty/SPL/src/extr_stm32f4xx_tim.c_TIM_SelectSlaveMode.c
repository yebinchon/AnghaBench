
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int SMCR; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_LIST2_PERIPH (TYPE_1__*) ;
 int IS_TIM_SLAVE_MODE (int ) ;
 scalar_t__ TIM_SMCR_SMS ;
 int assert_param (int ) ;

void TIM_SelectSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_SlaveMode)
{

  assert_param(IS_TIM_LIST2_PERIPH(TIMx));
  assert_param(IS_TIM_SLAVE_MODE(TIM_SlaveMode));


  TIMx->SMCR &= (uint16_t)~TIM_SMCR_SMS;


  TIMx->SMCR |= TIM_SlaveMode;
}
