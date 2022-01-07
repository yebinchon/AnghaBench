
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POPT_EN_STEREO ;
 int PicoOpt ;
 int PsndLen ;
 scalar_t__ PsndLen_exc_add ;
 short* PsndOut ;
 int memset32 (int*,int ,int) ;

void PsndClear(void)
{
  int len = PsndLen;
  if (PsndLen_exc_add) len++;
  if (PicoOpt & POPT_EN_STEREO)
    memset32((int *) PsndOut, 0, len);
  else {
    short *out = PsndOut;
    if ((long)out & 2) { *out++ = 0; len--; }
    memset32((int *) out, 0, len/2);
    if (len & 1) out[len-1] = 0;
  }
}
