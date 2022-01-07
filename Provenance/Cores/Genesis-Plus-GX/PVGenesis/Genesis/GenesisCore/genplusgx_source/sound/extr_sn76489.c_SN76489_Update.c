
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int clocks; unsigned int* ToneFreqVals; } ;


 unsigned int PSG_MCYCLES_RATIO ;
 TYPE_1__ SN76489 ;
 int SN76489_RunUntil (unsigned int) ;

void SN76489_Update(unsigned int clocks)
{
  int i;

  if (clocks > SN76489.clocks)
  {

    SN76489_RunUntil(clocks);


    SN76489.clocks += ((clocks - SN76489.clocks + PSG_MCYCLES_RATIO - 1) / PSG_MCYCLES_RATIO) * PSG_MCYCLES_RATIO;
  }


  SN76489.clocks -= clocks;


 for (i=0; i<4; ++i)
 {
  SN76489.ToneFreqVals[i] -= clocks;
 }
}
