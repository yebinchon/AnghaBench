
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ ISR; } ;
typedef TYPE_1__ ADC_TypeDef ;


 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int IS_ADC_CLEAR_IT (scalar_t__) ;
 int assert_param (int ) ;

void ADC_ClearITPendingBit(ADC_TypeDef* ADCx, uint32_t ADC_IT)
{

  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_ADC_CLEAR_IT(ADC_IT));


  ADCx->ISR = (uint32_t)ADC_IT;
}
