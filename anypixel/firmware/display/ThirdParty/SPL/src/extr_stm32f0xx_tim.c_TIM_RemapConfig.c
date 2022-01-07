
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int OR; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_LIST11_PERIPH (TYPE_1__*) ;
 int IS_TIM_REMAP (int ) ;
 int assert_param (int ) ;

void TIM_RemapConfig(TIM_TypeDef* TIMx, uint16_t TIM_Remap)
{

  assert_param(IS_TIM_LIST11_PERIPH(TIMx));
  assert_param(IS_TIM_REMAP(TIM_Remap));


  TIMx->OR = TIM_Remap;
}
