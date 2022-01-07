
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* s68k_regs; scalar_t__ cdda_type; int * cdda_stream; } ;


 scalar_t__ CT_MP3 ;
 int PAHW_32X ;
 int PAHW_MCD ;
 int PAHW_PICO ;
 int POPT_EN_FM ;
 int POPT_EN_MCD_CDDA ;
 int POPT_EN_PSG ;
 int POPT_EN_PWM ;
 int PicoAHW ;
 int PicoOpt ;
 int PicoPicoPCMUpdate (scalar_t__,int,int) ;
 TYPE_1__* Pico_mcd ;
 int* PsndBuffer ;
 scalar_t__ PsndLen_exc_add ;
 int PsndLen_exc_cnt ;
 int PsndMix_32_to_16l (scalar_t__,int*,int) ;
 scalar_t__ PsndOut ;
 int SN76496Update (scalar_t__,int,int) ;
 int YM2612UpdateOne (int*,int,int,int) ;
 int cdda_raw_update (int*,int) ;
 int memset32 (int*,int ,int) ;
 int mp3_update (int*,int,int) ;
 int p32x_pwm_update (int*,int,int) ;
 int pcd_pcm_update (int*,int,int) ;
 int pprof_end (int ) ;
 int pprof_start (int ) ;
 int sound ;

__attribute__((used)) static int PsndRender(int offset, int length)
{
  int buf32_updated = 0;
  int *buf32 = PsndBuffer+offset;
  int stereo = (PicoOpt & 8) >> 3;

  offset <<= stereo;

  pprof_start(sound);


  if (offset == 0) {

    PsndLen_exc_cnt += PsndLen_exc_add;
    if (PsndLen_exc_cnt >= 0x10000) {
      PsndLen_exc_cnt -= 0x10000;
      length++;
    }
  }



  if (PicoOpt & POPT_EN_PSG)
    SN76496Update(PsndOut+offset, length, stereo);

  if (PicoAHW & PAHW_PICO) {
    PicoPicoPCMUpdate(PsndOut+offset, length, stereo);
    return length;
  }


  if (PicoOpt & POPT_EN_FM) {
    buf32_updated = YM2612UpdateOne(buf32, length, stereo, 1);
  } else
    memset32(buf32, 0, length<<stereo);


  (void)buf32_updated;


  if (PicoAHW & PAHW_MCD) {
    pcd_pcm_update(buf32, length, stereo);

  }



  if ((PicoAHW & PAHW_MCD) && (PicoOpt & POPT_EN_MCD_CDDA)
      && Pico_mcd->cdda_stream != ((void*)0)
      && !(Pico_mcd->s68k_regs[0x36] & 1))
  {

    if (Pico_mcd->cdda_type == CT_MP3)
      mp3_update(buf32, length, stereo);
    else
      cdda_raw_update(buf32, length);
  }

  if ((PicoAHW & PAHW_32X) && (PicoOpt & POPT_EN_PWM))
    p32x_pwm_update(buf32, length, stereo);


  PsndMix_32_to_16l(PsndOut+offset, buf32, length);

  pprof_end(sound);

  return length;
}
