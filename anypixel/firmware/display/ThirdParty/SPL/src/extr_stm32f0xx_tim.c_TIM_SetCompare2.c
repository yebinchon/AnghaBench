
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int CCR2; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_LIST6_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

void TIM_SetCompare2(TIM_TypeDef* TIMx, uint32_t Compare2)
{

  assert_param(IS_TIM_LIST6_PERIPH(TIMx));


  TIMx->CCR2 = Compare2;
}
