
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DCMI_ExtendedDataMode; int DCMI_CaptureRate; int DCMI_HSPolarity; int DCMI_VSPolarity; int DCMI_PCKPolarity; int DCMI_SynchroMode; int DCMI_CaptureMode; } ;
typedef TYPE_1__ DCMI_InitTypeDef ;


 int DCMI_CaptureMode_Continuous ;
 int DCMI_CaptureRate_All_Frame ;
 int DCMI_ExtendedDataMode_8b ;
 int DCMI_HSPolarity_Low ;
 int DCMI_PCKPolarity_Falling ;
 int DCMI_SynchroMode_Hardware ;
 int DCMI_VSPolarity_Low ;

void DCMI_StructInit(DCMI_InitTypeDef* DCMI_InitStruct)
{

  DCMI_InitStruct->DCMI_CaptureMode = DCMI_CaptureMode_Continuous;
  DCMI_InitStruct->DCMI_SynchroMode = DCMI_SynchroMode_Hardware;
  DCMI_InitStruct->DCMI_PCKPolarity = DCMI_PCKPolarity_Falling;
  DCMI_InitStruct->DCMI_VSPolarity = DCMI_VSPolarity_Low;
  DCMI_InitStruct->DCMI_HSPolarity = DCMI_HSPolarity_Low;
  DCMI_InitStruct->DCMI_CaptureRate = DCMI_CaptureRate_All_Frame;
  DCMI_InitStruct->DCMI_ExtendedDataMode = DCMI_ExtendedDataMode_8b;
}
