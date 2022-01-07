
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int CCER; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int CCER_CCE_SET ;
 int IS_TIM_CCX (int) ;
 int IS_TIM_CHANNEL (int) ;
 int IS_TIM_LIST1_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

void TIM_CCxCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCx)
{
  uint16_t tmp = 0;


  assert_param(IS_TIM_LIST1_PERIPH(TIMx));
  assert_param(IS_TIM_CHANNEL(TIM_Channel));
  assert_param(IS_TIM_CCX(TIM_CCx));

  tmp = CCER_CCE_SET << TIM_Channel;


  TIMx->CCER &= (uint16_t)~ tmp;


  TIMx->CCER |= (uint16_t)(TIM_CCx << TIM_Channel);
}
