
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int samples; } ;


 int S_WriteLinearBlastStereo16 () ;
 TYPE_1__ dma ;
 scalar_t__ paintbuffer ;
 int s_paintedtime ;
 int snd_linear_count ;
 short* snd_out ;
 int* snd_p ;

void S_TransferStereo16 (unsigned long *pbuf, int endtime)
{
 int lpos;
 int ls_paintedtime;

 snd_p = (int *) paintbuffer;
 ls_paintedtime = s_paintedtime;

 while (ls_paintedtime < endtime)
 {

  lpos = ls_paintedtime & ((dma.samples>>1)-1);

  snd_out = (short *) pbuf + (lpos<<1);

  snd_linear_count = (dma.samples>>1) - lpos;
  if (ls_paintedtime + snd_linear_count > endtime)
   snd_linear_count = endtime - ls_paintedtime;

  snd_linear_count <<= 1;


  S_WriteLinearBlastStereo16 ();

  snd_p += snd_linear_count;
  ls_paintedtime += (snd_linear_count>>1);
 }
}
