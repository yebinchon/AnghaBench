
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ADC_TwoSamplingDelay; int ADC_DMAAccessMode; int ADC_Prescaler; int ADC_Mode; } ;
typedef TYPE_1__ ADC_CommonInitTypeDef ;


 int ADC_DMAAccessMode_Disabled ;
 int ADC_Mode_Independent ;
 int ADC_Prescaler_Div2 ;
 int ADC_TwoSamplingDelay_5Cycles ;

void ADC_CommonStructInit(ADC_CommonInitTypeDef* ADC_CommonInitStruct)
{

  ADC_CommonInitStruct->ADC_Mode = ADC_Mode_Independent;


  ADC_CommonInitStruct->ADC_Prescaler = ADC_Prescaler_Div2;


  ADC_CommonInitStruct->ADC_DMAAccessMode = ADC_DMAAccessMode_Disabled;


  ADC_CommonInitStruct->ADC_TwoSamplingDelay = ADC_TwoSamplingDelay_5Cycles;
}
