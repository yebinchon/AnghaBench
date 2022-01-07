
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int CNT; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

void TIM_SetCounter(TIM_TypeDef* TIMx, uint32_t Counter)
{

   assert_param(IS_TIM_ALL_PERIPH(TIMx));


  TIMx->CNT = Counter;
}
