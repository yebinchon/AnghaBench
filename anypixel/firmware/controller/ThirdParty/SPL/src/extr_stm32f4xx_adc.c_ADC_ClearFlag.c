
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int SR; } ;
typedef TYPE_1__ ADC_TypeDef ;


 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int IS_ADC_CLEAR_FLAG (scalar_t__) ;
 int assert_param (int ) ;

void ADC_ClearFlag(ADC_TypeDef* ADCx, uint8_t ADC_FLAG)
{

  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_ADC_CLEAR_FLAG(ADC_FLAG));


  ADCx->SR = ~(uint32_t)ADC_FLAG;
}
