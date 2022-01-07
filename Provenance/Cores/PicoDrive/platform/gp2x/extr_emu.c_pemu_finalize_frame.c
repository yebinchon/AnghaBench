
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dirtyPal; } ;
struct TYPE_5__ {int* reg; } ;
struct TYPE_8__ {TYPE_2__ m; TYPE_1__ video; } ;
struct TYPE_7__ {int EmuOpt; } ;


 int EOPT_EN_CD_LEDS ;
 int EOPT_SHOW_FPS ;
 int PAHW_32X ;
 int PAHW_MCD ;
 int PAHW_PICO ;
 int PAHW_SVP ;
 int POPT_DIS_32C_BORDER ;
 TYPE_4__ Pico ;
 int PicoAHW ;
 scalar_t__ PicoDraw2FB ;
 int PicoOpt ;
 scalar_t__ RT_8BIT_ACC ;
 scalar_t__ RT_8BIT_FAST ;
 TYPE_3__ currentConfig ;
 int draw_cd_leds () ;
 int draw_pico_ptr () ;
 int g_screen_ptr ;
 scalar_t__ get_renderer () ;
 int gp2x_video_setpalette (int ,int) ;
 int localPal ;
 int make_local_pal (int) ;
 int memset32 (int*,int,int) ;
 int osd_fps_x ;
 int osd_text (int,int ,char const*) ;
 int osd_y ;
 int vidcpyM2 (int ,scalar_t__,int,int) ;

void pemu_finalize_frame(const char *fps, const char *notice)
{
 int emu_opt = currentConfig.EmuOpt;
 int ret;

 if (PicoAHW & PAHW_32X)
  ;
 else if (get_renderer() == RT_8BIT_FAST)
 {

  if (Pico.m.dirtyPal) {
   Pico.m.dirtyPal = 0;
   ret = make_local_pal(1);

   gp2x_video_setpalette(localPal, ret);
  }

  if (PicoAHW & PAHW_SVP)
   memset32((int *)(PicoDraw2FB+328*8+328*223), 0xe0e0e0e0, 328);

  vidcpyM2(g_screen_ptr, PicoDraw2FB+328*8,
   !(Pico.video.reg[12] & 1), !(PicoOpt & POPT_DIS_32C_BORDER));
 }
 else if (get_renderer() == RT_8BIT_ACC)
 {

  if (Pico.m.dirtyPal)
  {
   Pico.m.dirtyPal = 0;
   ret = make_local_pal(0);
   gp2x_video_setpalette(localPal, ret);
  }
 }

 if (notice)
  osd_text(4, osd_y, notice);
 if (emu_opt & EOPT_SHOW_FPS)
  osd_text(osd_fps_x, osd_y, fps);
 if ((PicoAHW & PAHW_MCD) && (emu_opt & EOPT_EN_CD_LEDS))
  draw_cd_leds();
 if (PicoAHW & PAHW_PICO)
  draw_pico_ptr();
}
