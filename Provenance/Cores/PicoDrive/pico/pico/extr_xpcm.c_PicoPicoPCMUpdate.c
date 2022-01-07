
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* xpcm_buffer; unsigned char* xpcm_ptr; int fifo_bytes; } ;


 int EL_PICOHW ;
 TYPE_1__ PicoPicohw ;
 int do_sample () ;
 int elprintf (int ,char*,int) ;
 int memmove (unsigned char*,unsigned char*,int) ;
 int quant ;
 int sample ;
 int sgn ;
 scalar_t__ stepsamples ;

void PicoPicoPCMUpdate(short *buffer, int length, int stereo)
{
  unsigned char *src = PicoPicohw.xpcm_buffer;
  unsigned char *lim = PicoPicohw.xpcm_ptr;
  int srcval, needsamples = 0;

  if (src == lim) goto end;

  for (; length > 0 && src < lim; src++)
  {
    srcval = *src >> 4;
    do_sample();

    for (needsamples += stepsamples; needsamples > (1<<10) && length > 0; needsamples -= (1<<10), length--) {
      *buffer++ += sample;
      if (stereo) { buffer[0] = buffer[-1]; buffer++; }
    }

    srcval = *src & 0xf;
    do_sample();

    for (needsamples += stepsamples; needsamples > (1<<10) && length > 0; needsamples -= (1<<10), length--) {
      *buffer++ += sample;
      if (stereo) { buffer[0] = buffer[-1]; buffer++; }
    }


    sgn += (sample < 0) ? -1 : 1;
    if (sgn < -16 || sgn > 16) sample -= sample >> 5;
  }

  if (src < lim) {
    int di = lim - src;
    memmove(PicoPicohw.xpcm_buffer, src, di);
    PicoPicohw.xpcm_ptr = PicoPicohw.xpcm_buffer + di;
    elprintf(EL_PICOHW, "xpcm update: over %i", di);

    PicoPicohw.fifo_bytes = di;
    return;
  }

  elprintf(EL_PICOHW, "xpcm update: under %i", length);
  PicoPicohw.xpcm_ptr = PicoPicohw.xpcm_buffer;

end:
  if (stereo)

    for (; length > 0; buffer+=2, length--)
      buffer[1] = buffer[0];

  sample = sgn = 0;
  quant = 0x7f;
}
