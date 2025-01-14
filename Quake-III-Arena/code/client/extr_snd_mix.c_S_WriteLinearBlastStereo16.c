
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snd_linear_count ;
 int* snd_out ;
 int* snd_p ;

void S_WriteLinearBlastStereo16 (void)
{
 int i;
 int val;

 for (i=0 ; i<snd_linear_count ; i+=2)
 {
  val = snd_p[i]>>8;
  if (val > 0x7fff)
   snd_out[i] = 0x7fff;
  else if (val < -32768)
   snd_out[i] = -32768;
  else
   snd_out[i] = val;

  val = snd_p[i+1]>>8;
  if (val > 0x7fff)
   snd_out[i+1] = 0x7fff;
  else if (val < -32768)
   snd_out[i+1] = -32768;
  else
   snd_out[i+1] = val;
 }
}
