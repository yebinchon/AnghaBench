
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int clocks; unsigned int LatchedRegister; int* Registers; unsigned int** Channel; unsigned int** PreAmp; int NoiseFreq; int NoiseShiftRegister; } ;


 int NoiseInitialState ;
 unsigned int* PSGVolumeValues ;
 unsigned int PSG_MCYCLES_RATIO ;
 TYPE_1__ SN76489 ;
 int SN76489_RunUntil (unsigned int) ;

void SN76489_Write(unsigned int clocks, unsigned int data)
{
  unsigned int index;

  if (clocks > SN76489.clocks)
  {

    SN76489_RunUntil(clocks);


    SN76489.clocks += ((clocks - SN76489.clocks + PSG_MCYCLES_RATIO - 1) / PSG_MCYCLES_RATIO) * PSG_MCYCLES_RATIO;
  }

  if (data & 0x80)
  {

    SN76489.LatchedRegister = index = (data >> 4) & 0x07;
  }
  else
  {

    index = SN76489.LatchedRegister;
  }

  switch (index)
  {
    case 0:
    case 2:
    case 4:
    {
      if (data & 0x80)
      {

        SN76489.Registers[index] = (SN76489.Registers[index] & 0x3f0) | (data & 0xf);
      }
      else
      {

        SN76489.Registers[index] = (SN76489.Registers[index] & 0x00f) | ((data & 0x3f) << 4);
      }


      if (SN76489.Registers[index] == 0)
      {
        SN76489.Registers[index] = 1;
      }
      break;
    }

    case 1:
    case 3:
    case 5:
    {
      data &= 0x0f;
      SN76489.Registers[index] = data;
      data = PSGVolumeValues[data];
      index >>= 1;
      SN76489.Channel[index][0] = (data * SN76489.PreAmp[index][0]) / 100;
      SN76489.Channel[index][1] = (data * SN76489.PreAmp[index][1]) / 100;
      break;
    }

    case 6:
    {
      SN76489.Registers[6] = data & 0x0f;


      SN76489.NoiseShiftRegister = NoiseInitialState;


      SN76489.NoiseFreq = 0x10 << (data&0x3);
      break;
    }

    case 7:
    {
      data &= 0x0f;
      SN76489.Registers[7] = data;
      data = PSGVolumeValues[data];
      SN76489.Channel[3][0] = (data * SN76489.PreAmp[3][0]) / 100;
      SN76489.Channel[3][1] = (data * SN76489.PreAmp[3][1]) / 100;
      break;
    }
  }
}
