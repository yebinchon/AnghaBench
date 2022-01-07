
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ SMCR; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_LIST3_PERIPH (TYPE_1__*) ;
 int TIM_OCREFERENCECECLEAR_SOURCE (scalar_t__) ;
 scalar_t__ TIM_SMCR_OCCS ;
 int assert_param (int ) ;

void TIM_SelectOCREFClear(TIM_TypeDef* TIMx, uint16_t TIM_OCReferenceClear)
{

  assert_param(IS_TIM_LIST3_PERIPH(TIMx));
  assert_param(TIM_OCREFERENCECECLEAR_SOURCE(TIM_OCReferenceClear));


  TIMx->SMCR &= (uint16_t)~((uint16_t)TIM_SMCR_OCCS);
  TIMx->SMCR |= TIM_OCReferenceClear;
}
