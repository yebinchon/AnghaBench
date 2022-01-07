
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ADC_NbrOfConversion; int ADC_DataAlign; int ADC_ExternalTrigConv; int ADC_ExternalTrigConvEdge; void* ADC_ContinuousConvMode; void* ADC_ScanConvMode; int ADC_Resolution; } ;
typedef TYPE_1__ ADC_InitTypeDef ;


 int ADC_DataAlign_Right ;
 int ADC_ExternalTrigConvEdge_None ;
 int ADC_ExternalTrigConv_T1_CC1 ;
 int ADC_Resolution_12b ;
 void* DISABLE ;

void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct)
{

  ADC_InitStruct->ADC_Resolution = ADC_Resolution_12b;


  ADC_InitStruct->ADC_ScanConvMode = DISABLE;


  ADC_InitStruct->ADC_ContinuousConvMode = DISABLE;


  ADC_InitStruct->ADC_ExternalTrigConvEdge = ADC_ExternalTrigConvEdge_None;


  ADC_InitStruct->ADC_ExternalTrigConv = ADC_ExternalTrigConv_T1_CC1;


  ADC_InitStruct->ADC_DataAlign = ADC_DataAlign_Right;


  ADC_InitStruct->ADC_NbrOfConversion = 1;
}
