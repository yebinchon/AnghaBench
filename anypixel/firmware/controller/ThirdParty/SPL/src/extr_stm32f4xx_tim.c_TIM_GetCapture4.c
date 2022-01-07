
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int CCR4; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_LIST3_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint32_t TIM_GetCapture4(TIM_TypeDef* TIMx)
{

  assert_param(IS_TIM_LIST3_PERIPH(TIMx));


  return TIMx->CCR4;
}
