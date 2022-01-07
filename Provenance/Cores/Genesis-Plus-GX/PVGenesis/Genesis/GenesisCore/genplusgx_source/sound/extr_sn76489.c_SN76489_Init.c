
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int blip_t ;
struct TYPE_2__ {int** PreAmp; int SRWidth; int NoiseFeedback; } ;


 int FB_DISCRETE ;
 int FB_SEGAVDP ;
 TYPE_1__ SN76489 ;
 int SN_DISCRETE ;
 int SRW_DISCRETE ;
 int SRW_SEGAVDP ;
 int ** blip ;

void SN76489_Init(blip_t* left, blip_t* right, int type)
{
  int i;

  blip[0] = left;
  blip[1] = right;

  for (i=0; i<4; i++)
  {
    SN76489.PreAmp[i][0] = 100;
    SN76489.PreAmp[i][1] = 100;
  }

  if (type == SN_DISCRETE)
  {
    SN76489.NoiseFeedback = FB_DISCRETE;
    SN76489.SRWidth = SRW_DISCRETE;
  }
  else
  {
    SN76489.NoiseFeedback = FB_SEGAVDP;
    SN76489.SRWidth = SRW_SEGAVDP;
  }
}
