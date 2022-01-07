
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int CR; } ;
struct TYPE_4__ {int DAC_Trigger; int DAC_WaveGeneration; int DAC_LFSRUnmask_TriangleAmplitude; int DAC_OutputBuffer; } ;
typedef TYPE_1__ DAC_InitTypeDef ;


 int CR_CLEAR_MASK ;
 TYPE_3__* DAC ;
 int IS_DAC_GENERATE_WAVE (int) ;
 int IS_DAC_LFSR_UNMASK_TRIANGLE_AMPLITUDE (int) ;
 int IS_DAC_OUTPUT_BUFFER_STATE (int) ;
 int IS_DAC_TRIGGER (int) ;
 int assert_param (int ) ;

void DAC_Init(uint32_t DAC_Channel, DAC_InitTypeDef* DAC_InitStruct)
{
  uint32_t tmpreg1 = 0, tmpreg2 = 0;


  assert_param(IS_DAC_TRIGGER(DAC_InitStruct->DAC_Trigger));
  assert_param(IS_DAC_GENERATE_WAVE(DAC_InitStruct->DAC_WaveGeneration));
  assert_param(IS_DAC_LFSR_UNMASK_TRIANGLE_AMPLITUDE(DAC_InitStruct->DAC_LFSRUnmask_TriangleAmplitude));
  assert_param(IS_DAC_OUTPUT_BUFFER_STATE(DAC_InitStruct->DAC_OutputBuffer));



  tmpreg1 = DAC->CR;

  tmpreg1 &= ~(CR_CLEAR_MASK << DAC_Channel);






  tmpreg2 = (DAC_InitStruct->DAC_Trigger | DAC_InitStruct->DAC_WaveGeneration |
             DAC_InitStruct->DAC_LFSRUnmask_TriangleAmplitude | DAC_InitStruct->DAC_OutputBuffer);


  tmpreg1 |= tmpreg2 << DAC_Channel;

  DAC->CR = tmpreg1;
}
