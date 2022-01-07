
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_4__ {void* EGR; void* PSC; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_ALL_PERIPH (TYPE_1__*) ;
 int IS_TIM_PRESCALER_RELOAD (void*) ;
 int assert_param (int ) ;

void TIM_PrescalerConfig(TIM_TypeDef* TIMx, uint16_t Prescaler, uint16_t TIM_PSCReloadMode)
{

  assert_param(IS_TIM_ALL_PERIPH(TIMx));
  assert_param(IS_TIM_PRESCALER_RELOAD(TIM_PSCReloadMode));


  TIMx->PSC = Prescaler;

  TIMx->EGR = TIM_PSCReloadMode;
}
