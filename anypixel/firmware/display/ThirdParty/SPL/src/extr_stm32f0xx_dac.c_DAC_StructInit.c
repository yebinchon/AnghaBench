
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DAC_OutputBuffer; int DAC_LFSRUnmask_TriangleAmplitude; int DAC_WaveGeneration; int DAC_Trigger; } ;
typedef TYPE_1__ DAC_InitTypeDef ;


 int DAC_LFSRUnmask_Bit0 ;
 int DAC_OutputBuffer_Enable ;
 int DAC_Trigger_None ;
 int DAC_WaveGeneration_None ;

void DAC_StructInit(DAC_InitTypeDef* DAC_InitStruct)
{


  DAC_InitStruct->DAC_Trigger = DAC_Trigger_None;


  DAC_InitStruct->DAC_WaveGeneration = DAC_WaveGeneration_None;


  DAC_InitStruct->DAC_LFSRUnmask_TriangleAmplitude = DAC_LFSRUnmask_Bit0;


  DAC_InitStruct->DAC_OutputBuffer = DAC_OutputBuffer_Enable;
}
