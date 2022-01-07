
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int NoiseFreq; int* Registers; int* ToneFreqVals; int clocks; int* ToneFreqPos; int NoiseShiftRegister; int NoiseFeedback; int SRWidth; } ;


 int PSG_MCYCLES_RATIO ;
 TYPE_1__ SN76489 ;
 int UpdateNoiseAmplitude (int) ;

__attribute__((used)) static void RunNoise(int clocks)
{
  int time;


  int NoiseFreq = SN76489.NoiseFreq;
  if (NoiseFreq == 0x80)
  {
    NoiseFreq = SN76489.Registers[2*2];
    SN76489.ToneFreqVals[3] = SN76489.ToneFreqVals[2];
  }


  UpdateNoiseAmplitude(SN76489.clocks);


  time = SN76489.ToneFreqVals[3];


  while (time < clocks)
  {

    SN76489.ToneFreqPos[3] = -SN76489.ToneFreqPos[3];
    if (SN76489.ToneFreqPos[3] == 1)
    {

      int Feedback = SN76489.NoiseShiftRegister;
      if ( SN76489.Registers[6] & 0x4 )
      {





        Feedback = ((Feedback & SN76489.NoiseFeedback) && ((Feedback & SN76489.NoiseFeedback) ^ SN76489.NoiseFeedback));
      }
      else
        Feedback = Feedback & 1;

      SN76489.NoiseShiftRegister = (SN76489.NoiseShiftRegister >> 1) | (Feedback << (SN76489.SRWidth - 1));
      UpdateNoiseAmplitude(time);
    }


    time += NoiseFreq * PSG_MCYCLES_RATIO;
  }


  SN76489.ToneFreqVals[3] = time;
}
