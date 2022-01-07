
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int clocks; int** PreAmp; int** Channel; size_t* Registers; } ;


 int* PSGVolumeValues ;
 unsigned int PSG_MCYCLES_RATIO ;
 TYPE_1__ SN76489 ;
 int SN76489_RunUntil (unsigned int) ;

void SN76489_Config(unsigned int clocks, int preAmp, int boostNoise, int stereo)
{
  int i;


  if (clocks > SN76489.clocks)
  {

    SN76489_RunUntil(clocks);


    SN76489.clocks += ((clocks - SN76489.clocks + PSG_MCYCLES_RATIO - 1) / PSG_MCYCLES_RATIO) * PSG_MCYCLES_RATIO;
  }

  for (i=0; i<4; i++)
  {

    SN76489.PreAmp[i][0] = preAmp * ((stereo >> (i + 4)) & 1);
    SN76489.PreAmp[i][1] = preAmp * ((stereo >> (i + 0)) & 1);


    if (i == 3)
    {
      SN76489.PreAmp[3][0] = SN76489.PreAmp[3][0] << boostNoise;
      SN76489.PreAmp[3][1] = SN76489.PreAmp[3][1] << boostNoise;
    }


    SN76489.Channel[i][0]= (PSGVolumeValues[SN76489.Registers[i*2 + 1]] * SN76489.PreAmp[i][0]) / 100;
    SN76489.Channel[i][1]= (PSGVolumeValues[SN76489.Registers[i*2 + 1]] * SN76489.PreAmp[i][1]) / 100;
  }
}
