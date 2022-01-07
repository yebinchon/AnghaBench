
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fm_preamp; scalar_t__ hq_fm; } ;
struct TYPE_3__ {int ** blips; } ;


 int SN76489_Update (unsigned int) ;
 int blip_add_delta (int ,int,int) ;
 int blip_add_delta_fast (int ,int,int) ;
 int blip_end_frame (int ,unsigned int) ;
 int blip_samples_avail (int ) ;
 TYPE_2__ config ;
 void* fm_buffer ;
 int fm_cycles_count ;
 scalar_t__ fm_cycles_ratio ;
 int fm_cycles_start ;
 int* fm_last ;
 void* fm_ptr ;
 int fm_update (unsigned int) ;
 TYPE_1__ snd ;

int sound_update(unsigned int cycles)
{
  int delta, preamp, time, l, r, *ptr;


  SN76489_Update(cycles);
  fm_update(cycles);


  preamp = config.fm_preamp;


  time = fm_cycles_start;


  l = fm_last[0];
  r = fm_last[1];


  ptr = fm_buffer;


  if (config.hq_fm)
  {

    do
    {

      delta = ((*ptr++ * preamp) / 100) - l;
      l += delta;
      blip_add_delta(snd.blips[0][0], time, delta);


      delta = ((*ptr++ * preamp) / 100) - r;
      r += delta;
      blip_add_delta(snd.blips[0][1], time, delta);


      time += fm_cycles_ratio;
    }
    while (time < cycles);
  }
  else
  {

    do
    {

      delta = ((*ptr++ * preamp) / 100) - l;
      l += delta;
      blip_add_delta_fast(snd.blips[0][0], time, delta);


      delta = ((*ptr++ * preamp) / 100) - r;
      r += delta;
      blip_add_delta_fast(snd.blips[0][1], time, delta);


      time += fm_cycles_ratio;
    }
    while (time < cycles);
  }


  fm_ptr = fm_buffer;


  fm_last[0] = l;
  fm_last[1] = r;


  fm_cycles_count = fm_cycles_start = time - cycles;


  blip_end_frame(snd.blips[0][0], cycles);
  blip_end_frame(snd.blips[0][1], cycles);


  return blip_samples_avail(snd.blips[0][0]);
}
