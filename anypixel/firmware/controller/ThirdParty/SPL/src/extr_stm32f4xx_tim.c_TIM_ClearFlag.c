
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ SR; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

void TIM_ClearFlag(TIM_TypeDef* TIMx, uint16_t TIM_FLAG)
{

  assert_param(IS_TIM_ALL_PERIPH(TIMx));


  TIMx->SR = (uint16_t)~TIM_FLAG;
}
