
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gen_init () ;
 int io_init () ;
 int render_init () ;
 int sound_init () ;
 int vdp_init () ;

void system_init(void)
{
  gen_init();
  io_init();
  vdp_init();
  render_init();
  sound_init();
}
