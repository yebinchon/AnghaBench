
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int EmuOpt; } ;


 int EOPT_EN_CD_LEDS ;
 int EOPT_SHOW_FPS ;
 int PAHW_MCD ;
 int PicoAHW ;
 TYPE_1__ currentConfig ;
 int draw_cd_leds () ;
 int emu_osd_text16 (int,int ,char const*) ;
 int g_osd_fps_x ;
 int g_osd_y ;

void pemu_finalize_frame(const char *fps, const char *notice)
{
 if (notice && notice[0])
  emu_osd_text16(2, g_osd_y, notice);
 if (fps && fps[0] && (currentConfig.EmuOpt & EOPT_SHOW_FPS))
  emu_osd_text16(g_osd_fps_x, g_osd_y, fps);
 if ((PicoAHW & PAHW_MCD) && (currentConfig.EmuOpt & EOPT_EN_CD_LEDS))
  draw_cd_leds();
}
