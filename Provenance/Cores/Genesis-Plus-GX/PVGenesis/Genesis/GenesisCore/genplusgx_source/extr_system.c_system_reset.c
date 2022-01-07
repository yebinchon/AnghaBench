
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int audio_reset () ;
 int gen_reset (int) ;
 int io_reset () ;
 int render_reset () ;
 int sound_reset () ;
 int vdp_reset () ;

void system_reset(void)
{
  gen_reset(1);
  io_reset();
  render_reset();
  vdp_reset();
  sound_reset();
  audio_reset();
}
