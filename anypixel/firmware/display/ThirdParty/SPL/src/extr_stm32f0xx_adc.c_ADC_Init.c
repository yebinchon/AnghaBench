
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int ADC_Resolution; int ADC_ExternalTrigConvEdge; int ADC_ExternalTrigConv; int ADC_DataAlign; int ADC_ScanDirection; scalar_t__ ADC_ContinuousConvMode; } ;
struct TYPE_6__ {int CFGR1; } ;
typedef TYPE_1__ ADC_TypeDef ;
typedef TYPE_2__ ADC_InitTypeDef ;


 int CFGR1_CLEAR_MASK ;
 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int IS_ADC_DATA_ALIGN (int) ;
 int IS_ADC_EXTERNAL_TRIG_CONV (int) ;
 int IS_ADC_EXT_TRIG_EDGE (int) ;
 int IS_ADC_RESOLUTION (int) ;
 int IS_ADC_SCAN_DIRECTION (int) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct)
{
  uint32_t tmpreg = 0;


  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_ADC_RESOLUTION(ADC_InitStruct->ADC_Resolution));
  assert_param(IS_FUNCTIONAL_STATE(ADC_InitStruct->ADC_ContinuousConvMode));
  assert_param(IS_ADC_EXT_TRIG_EDGE(ADC_InitStruct->ADC_ExternalTrigConvEdge));
  assert_param(IS_ADC_EXTERNAL_TRIG_CONV(ADC_InitStruct->ADC_ExternalTrigConv));
  assert_param(IS_ADC_DATA_ALIGN(ADC_InitStruct->ADC_DataAlign));
  assert_param(IS_ADC_SCAN_DIRECTION(ADC_InitStruct->ADC_ScanDirection));


  tmpreg = ADCx->CFGR1;


  tmpreg &= CFGR1_CLEAR_MASK;
  tmpreg |= (uint32_t)(ADC_InitStruct->ADC_Resolution | ((uint32_t)(ADC_InitStruct->ADC_ContinuousConvMode) << 13) |
             ADC_InitStruct->ADC_ExternalTrigConvEdge | ADC_InitStruct->ADC_ExternalTrigConv |
             ADC_InitStruct->ADC_DataAlign | ADC_InitStruct->ADC_ScanDirection);


  ADCx->CFGR1 = tmpreg;
}
