
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int int32 ;
typedef int int16 ;
struct TYPE_4__ {int filter; int lp_range; scalar_t__ mono; } ;
struct TYPE_3__ {int ** blips; } ;


 int ALIGN_SND ;
 scalar_t__ SYSTEM_MCD ;
 int blip_mix_samples (int ,int*,int) ;
 int blip_read_samples (int ,int*,int) ;
 int cdd_read_audio (int) ;
 TYPE_2__ config ;
 int do_3band (int *,int) ;
 int eq ;
 int error (char*,int) ;
 int llp ;
 int mcycles_vdp ;
 int pcm_update (int) ;
 int rrp ;
 TYPE_1__ snd ;
 int sound_update (int ) ;
 scalar_t__ system_hw ;

int audio_update(int16 *buffer)
{

  int size = sound_update(mcycles_vdp);


  if (system_hw == SYSTEM_MCD)
  {

    pcm_update(size);


    cdd_read_audio(size);
  }
  blip_read_samples(snd.blips[0][0], buffer + 1, size);
  blip_read_samples(snd.blips[0][1], buffer, size);



  if (system_hw == SYSTEM_MCD)
  {







    blip_mix_samples(snd.blips[1][0], buffer + 1, size);
    blip_mix_samples(snd.blips[1][1], buffer, size);
    blip_mix_samples(snd.blips[2][0], buffer + 1, size);
    blip_mix_samples(snd.blips[2][1], buffer, size);

  }


  if (config.filter)
  {
    int samples = size;
    int16 *out = buffer;
    int32 l, r;

    if (config.filter & 1)
    {

      uint32 factora = config.lp_range;
      uint32 factorb = 0x10000 - factora;


      l = llp;
      r = rrp;

      do
      {

        l = l*factora + out[0]*factorb;
        r = r*factora + out[1]*factorb;


        l >>= 16;
        r >>= 16;


        *out++ = l;
        *out++ = r;
      }
      while (--samples);


      llp = l;
      rrp = r;
    }
    else if (config.filter & 2)
    {
      do
      {

        l = do_3band(&eq,out[0]);
        r = do_3band(&eq,out[1]);


        if (l > 32767) l = 32767;
        else if (l < -32768) l = -32768;
        if (r > 32767) r = 32767;
        else if (r < -32768) r = -32768;


        *out++ = l;
        *out++ = r;
      }
      while (--samples);
    }
  }


  if (config.mono)
  {
    int16 out;
    int samples = size;
    do
    {
      out = (buffer[0] + buffer[1]) / 2;
      *buffer++ = out;
      *buffer++ = out;
    }
    while (--samples);
  }





  return size;
}
