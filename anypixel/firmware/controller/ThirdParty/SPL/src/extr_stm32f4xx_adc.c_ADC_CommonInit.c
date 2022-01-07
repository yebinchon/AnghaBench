
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int CCR; } ;
struct TYPE_4__ {int ADC_Mode; int ADC_Prescaler; int ADC_DMAAccessMode; int ADC_TwoSamplingDelay; } ;
typedef TYPE_1__ ADC_CommonInitTypeDef ;


 TYPE_3__* ADC ;
 int CR_CLEAR_MASK ;
 int IS_ADC_DMA_ACCESS_MODE (int) ;
 int IS_ADC_MODE (int) ;
 int IS_ADC_PRESCALER (int) ;
 int IS_ADC_SAMPLING_DELAY (int) ;
 int assert_param (int ) ;

void ADC_CommonInit(ADC_CommonInitTypeDef* ADC_CommonInitStruct)
{
  uint32_t tmpreg1 = 0;

  assert_param(IS_ADC_MODE(ADC_CommonInitStruct->ADC_Mode));
  assert_param(IS_ADC_PRESCALER(ADC_CommonInitStruct->ADC_Prescaler));
  assert_param(IS_ADC_DMA_ACCESS_MODE(ADC_CommonInitStruct->ADC_DMAAccessMode));
  assert_param(IS_ADC_SAMPLING_DELAY(ADC_CommonInitStruct->ADC_TwoSamplingDelay));


  tmpreg1 = ADC->CCR;


  tmpreg1 &= CR_CLEAR_MASK;







  tmpreg1 |= (uint32_t)(ADC_CommonInitStruct->ADC_Mode |
                        ADC_CommonInitStruct->ADC_Prescaler |
                        ADC_CommonInitStruct->ADC_DMAAccessMode |
                        ADC_CommonInitStruct->ADC_TwoSamplingDelay);


  ADC->CCR = tmpreg1;
}
