
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int CR2; } ;
typedef TYPE_1__ ADC_TypeDef ;


 int CR2_JEXTEN_RESET ;
 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int IS_ADC_EXT_INJEC_TRIG_EDGE (int ) ;
 int assert_param (int ) ;

void ADC_ExternalTrigInjectedConvEdgeConfig(ADC_TypeDef* ADCx, uint32_t ADC_ExternalTrigInjecConvEdge)
{
  uint32_t tmpreg = 0;

  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_ADC_EXT_INJEC_TRIG_EDGE(ADC_ExternalTrigInjecConvEdge));

  tmpreg = ADCx->CR2;

  tmpreg &= CR2_JEXTEN_RESET;

  tmpreg |= ADC_ExternalTrigInjecConvEdge;

  ADCx->CR2 = tmpreg;
}
