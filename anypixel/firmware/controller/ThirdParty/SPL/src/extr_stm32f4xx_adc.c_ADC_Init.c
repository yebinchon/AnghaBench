
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int ADC_Resolution; int ADC_ExternalTrigConvEdge; int ADC_ExternalTrigConv; int ADC_DataAlign; scalar_t__ ADC_NbrOfConversion; scalar_t__ ADC_ContinuousConvMode; scalar_t__ ADC_ScanConvMode; } ;
struct TYPE_6__ {int CR1; int CR2; int SQR1; } ;
typedef TYPE_1__ ADC_TypeDef ;
typedef TYPE_2__ ADC_InitTypeDef ;


 int CR1_CLEAR_MASK ;
 int CR2_CLEAR_MASK ;
 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int IS_ADC_DATA_ALIGN (int) ;
 int IS_ADC_EXT_TRIG (int) ;
 int IS_ADC_EXT_TRIG_EDGE (int) ;
 int IS_ADC_REGULAR_LENGTH (scalar_t__) ;
 int IS_ADC_RESOLUTION (int) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int SQR1_L_RESET ;
 int assert_param (int ) ;

void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct)
{
  uint32_t tmpreg1 = 0;
  uint8_t tmpreg2 = 0;

  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_ADC_RESOLUTION(ADC_InitStruct->ADC_Resolution));
  assert_param(IS_FUNCTIONAL_STATE(ADC_InitStruct->ADC_ScanConvMode));
  assert_param(IS_FUNCTIONAL_STATE(ADC_InitStruct->ADC_ContinuousConvMode));
  assert_param(IS_ADC_EXT_TRIG_EDGE(ADC_InitStruct->ADC_ExternalTrigConvEdge));
  assert_param(IS_ADC_EXT_TRIG(ADC_InitStruct->ADC_ExternalTrigConv));
  assert_param(IS_ADC_DATA_ALIGN(ADC_InitStruct->ADC_DataAlign));
  assert_param(IS_ADC_REGULAR_LENGTH(ADC_InitStruct->ADC_NbrOfConversion));



  tmpreg1 = ADCx->CR1;


  tmpreg1 &= CR1_CLEAR_MASK;




  tmpreg1 |= (uint32_t)(((uint32_t)ADC_InitStruct->ADC_ScanConvMode << 8) | ADC_InitStruct->ADC_Resolution);


  ADCx->CR1 = tmpreg1;


  tmpreg1 = ADCx->CR2;


  tmpreg1 &= CR2_CLEAR_MASK;







  tmpreg1 |= (uint32_t)(ADC_InitStruct->ADC_DataAlign | ADC_InitStruct->ADC_ExternalTrigConv |

                        ADC_InitStruct->ADC_ExternalTrigConvEdge | ((uint32_t)ADC_InitStruct->ADC_ContinuousConvMode << 1));



  ADCx->CR2 = tmpreg1;


  tmpreg1 = ADCx->SQR1;


  tmpreg1 &= SQR1_L_RESET;



  tmpreg2 |= (uint8_t)(ADC_InitStruct->ADC_NbrOfConversion - (uint8_t)1);
  tmpreg1 |= ((uint32_t)tmpreg2 << 20);


  ADCx->SQR1 = tmpreg1;
}
