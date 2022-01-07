
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POPT_EN_PSG ;
 int POPT_EN_STEREO ;
 int PicoOpt ;
 int PicoWriteSound (int) ;
 int PsndClear () ;
 int PsndLen ;
 scalar_t__ PsndLen_exc_add ;
 int PsndLen_exc_cnt ;
 scalar_t__ PsndOut ;
 int SN76496Update (scalar_t__,int,int) ;

void PsndGetSamplesMS(void)
{
  int stereo = (PicoOpt & 8) >> 3;
  int length = PsndLen;



  PsndLen_exc_cnt += PsndLen_exc_add;
  if (PsndLen_exc_cnt >= 0x10000) {
    PsndLen_exc_cnt -= 0x10000;
    length++;
  }



  if (PicoOpt & POPT_EN_PSG)
    SN76496Update(PsndOut, length, stereo);


  if (stereo) {
    int i, *p;
    for (i = length, p = (void *)PsndOut; i > 0; i--, p++)
      *p |= *p << 16;
  }

  if (PicoWriteSound != ((void*)0))
    PicoWriteSound(length * ((PicoOpt & POPT_EN_STEREO) ? 4 : 2));
  PsndClear();
}
