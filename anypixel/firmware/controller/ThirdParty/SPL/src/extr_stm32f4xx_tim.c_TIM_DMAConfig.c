
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int DCR; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_DMA_BASE (int) ;
 int IS_TIM_DMA_LENGTH (int) ;
 int IS_TIM_LIST3_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

void TIM_DMAConfig(TIM_TypeDef* TIMx, uint16_t TIM_DMABase, uint16_t TIM_DMABurstLength)
{

  assert_param(IS_TIM_LIST3_PERIPH(TIMx));
  assert_param(IS_TIM_DMA_BASE(TIM_DMABase));
  assert_param(IS_TIM_DMA_LENGTH(TIM_DMABurstLength));


  TIMx->DCR = TIM_DMABase | TIM_DMABurstLength;
}
