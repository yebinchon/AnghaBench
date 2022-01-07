
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POPT_EN_STEREO ;
 int PicoOpt ;

__attribute__((used)) static int sndrate_prevnext(int rate, int dir)
{
 static const int rates[] = { 8000, 11025, 16000, 22050, 44100 };
 int i;

 for (i = 0; i < 5; i++)
  if (rates[i] == rate) break;

 i += dir ? 1 : -1;
 if (i > 4) {
  if (!(PicoOpt & POPT_EN_STEREO)) {
   PicoOpt |= POPT_EN_STEREO;
   return rates[0];
  }
  return rates[4];
 }
 if (i < 0) {
  if (PicoOpt & POPT_EN_STEREO) {
   PicoOpt &= ~POPT_EN_STEREO;
   return rates[4];
  }
  return rates[0];
 }
 return rates[i];
}
