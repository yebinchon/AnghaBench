
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAHW_32X ;
 int PicoAHW ;
 int change_renderer (int) ;
 int emu_status_msg (int ) ;
 size_t get_renderer () ;
 int * renderer_names ;
 int * renderer_names32x ;
 int rendstatus_old ;
 int vid_reset_mode () ;

void plat_video_toggle_renderer(int change, int is_menu_call)
{
 change_renderer(change);

 if (is_menu_call)
  return;

 vid_reset_mode();
 rendstatus_old = -1;

 if (PicoAHW & PAHW_32X)
  emu_status_msg(renderer_names32x[get_renderer()]);
 else
  emu_status_msg(renderer_names[get_renderer()]);
}
