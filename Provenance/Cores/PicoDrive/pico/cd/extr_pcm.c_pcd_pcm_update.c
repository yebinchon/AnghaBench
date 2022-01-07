
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pcm_mixpos; int* pcm_mixbuf; scalar_t__ pcm_mixbuf_dirty; } ;


 int POPT_EN_MCD_PCM ;
 int PicoOpt ;
 TYPE_1__* Pico_mcd ;
 int SekCyclesDoneS68k () ;
 int memset (int*,int ,int) ;
 int pcd_pcm_sync (int ) ;

void pcd_pcm_update(int *buf32, int length, int stereo)
{
  int step, *pcm;
  int p = 0;

  pcd_pcm_sync(SekCyclesDoneS68k());

  if (!Pico_mcd->pcm_mixbuf_dirty || !(PicoOpt & POPT_EN_MCD_PCM))
    goto out;

  step = (Pico_mcd->pcm_mixpos << 16) / length;
  pcm = Pico_mcd->pcm_mixbuf;

  if (stereo) {
    while (length-- > 0) {
      *buf32++ += pcm[0];
      *buf32++ += pcm[1];

      p += step;
      pcm += (p >> 16) * 2;
      p &= 0xffff;
    }
  }
  else {
    while (length-- > 0) {

      *buf32++ += pcm[0];

      p += step;
      pcm += (p >> 16) * 2;
      p &= 0xffff;
    }
  }

  memset(Pico_mcd->pcm_mixbuf, 0,
    Pico_mcd->pcm_mixpos * 2 * sizeof(Pico_mcd->pcm_mixbuf[0]));

out:
  Pico_mcd->pcm_mixbuf_dirty = 0;
  Pico_mcd->pcm_mixpos = 0;
}
