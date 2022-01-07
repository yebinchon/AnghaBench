
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ADC_TypeDef ;


 int * ADC1 ;
 int DISABLE ;
 int ENABLE ;
 int IS_ADC_ALL_PERIPH (int *) ;
 int RCC_APB2PeriphResetCmd (int ,int ) ;
 int RCC_APB2Periph_ADC1 ;
 int assert_param (int ) ;

void ADC_DeInit(ADC_TypeDef* ADCx)
{

  assert_param(IS_ADC_ALL_PERIPH(ADCx));

  if(ADCx == ADC1)
  {

    RCC_APB2PeriphResetCmd(RCC_APB2Periph_ADC1, ENABLE);


    RCC_APB2PeriphResetCmd(RCC_APB2Periph_ADC1, DISABLE);
  }
}
