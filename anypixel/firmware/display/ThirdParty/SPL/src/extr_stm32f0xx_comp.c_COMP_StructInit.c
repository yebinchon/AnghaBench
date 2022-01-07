
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int COMP_Mode; int COMP_Hysteresis; int COMP_OutputPol; int COMP_Output; int COMP_InvertingInput; } ;
typedef TYPE_1__ COMP_InitTypeDef ;


 int COMP_Hysteresis_No ;
 int COMP_InvertingInput_1_4VREFINT ;
 int COMP_Mode_UltraLowPower ;
 int COMP_OutputPol_NonInverted ;
 int COMP_Output_None ;

void COMP_StructInit(COMP_InitTypeDef* COMP_InitStruct)
{
  COMP_InitStruct->COMP_InvertingInput = COMP_InvertingInput_1_4VREFINT;
  COMP_InitStruct->COMP_Output = COMP_Output_None;
  COMP_InitStruct->COMP_OutputPol = COMP_OutputPol_NonInverted;
  COMP_InitStruct->COMP_Hysteresis = COMP_Hysteresis_No;
  COMP_InitStruct->COMP_Mode = COMP_Mode_UltraLowPower;
}
