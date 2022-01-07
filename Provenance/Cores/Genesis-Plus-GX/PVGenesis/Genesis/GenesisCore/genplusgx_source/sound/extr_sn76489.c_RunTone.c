
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clocks; int* ToneFreqVals; int* Registers; int* ToneFreqPos; } ;


 int PSG_CUTOFF ;
 int PSG_MCYCLES_RATIO ;
 TYPE_1__ SN76489 ;
 int UpdateToneAmplitude (int,int) ;

__attribute__((used)) static void RunTone(int i, int clocks)
{
  int time;


  UpdateToneAmplitude(i, SN76489.clocks);


  time = SN76489.ToneFreqVals[i];


  while (time < clocks)
  {
    if (SN76489.Registers[i*2]>PSG_CUTOFF) {

      SN76489.ToneFreqPos[i] = -SN76489.ToneFreqPos[i];
    } else {

      SN76489.ToneFreqPos[i] = 1;
    }
    UpdateToneAmplitude(i, time);


    time += SN76489.Registers[i*2] * PSG_MCYCLES_RATIO;
  }


  SN76489.ToneFreqVals[i] = time;
}
