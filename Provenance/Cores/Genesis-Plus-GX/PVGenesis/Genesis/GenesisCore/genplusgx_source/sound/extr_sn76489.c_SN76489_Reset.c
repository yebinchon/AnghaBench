
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* Registers; int* ToneFreqPos; int NoiseFreq; scalar_t__ clocks; int NoiseShiftRegister; scalar_t__ LatchedRegister; scalar_t__** ChanOut; scalar_t__** Channel; scalar_t__* ToneFreqVals; } ;


 int NoiseInitialState ;
 TYPE_1__ SN76489 ;

void SN76489_Reset()
{
  int i;

  for(i = 0; i <= 3; i++)
  {

    SN76489.Registers[2*i] = 1;
    SN76489.Registers[2*i+1] = 0xf;


    SN76489.ToneFreqVals[i] = 0;


    SN76489.ToneFreqPos[i] = 1;


    SN76489.Channel[i][0] = 0;
    SN76489.Channel[i][1] = 0;


    SN76489.ChanOut[i][0] = 0;
    SN76489.ChanOut[i][1] = 0;
  }


  SN76489.LatchedRegister = 0;


  SN76489.NoiseShiftRegister=NoiseInitialState;
  SN76489.NoiseFreq = 0x10;


  SN76489.clocks = 0;
}
