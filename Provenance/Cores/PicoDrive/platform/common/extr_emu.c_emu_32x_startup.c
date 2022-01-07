
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int plat_video_toggle_renderer (int ,int ) ;
 int system_announce () ;

void emu_32x_startup(void)
{
 plat_video_toggle_renderer(0, 0);
 system_announce();
}
