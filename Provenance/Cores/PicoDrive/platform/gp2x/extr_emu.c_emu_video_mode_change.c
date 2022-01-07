
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ scaling; scalar_t__ vscaling; } ;


 scalar_t__ EOPT_SCALE_HW ;
 scalar_t__ EOPT_SCALE_SW ;
 int EmuScanBegin16_ld ;
 int EmuScanEnd16_ld ;
 scalar_t__ OSD_FPS_X ;
 int POPT_DIS_32C_BORDER ;
 int PicoDrawSetCallbacks (int ,int ) ;
 int PicoOpt ;
 TYPE_1__ currentConfig ;
 scalar_t__ doing_bg_frame ;
 int gp2x_memset_all_buffers (int ,int,int) ;
 int gp2x_video_RGB_setscaling (int,int,int) ;
 int is_16bit_mode () ;
 int ld_left ;
 int ld_lines ;
 scalar_t__ osd_fps_x ;
 int osd_y ;

void emu_video_mode_change(int start_line, int line_count, int is_32cols)
{
 int scalex = 320, scaley = 240;
 int ln_offs = 0;

 if (doing_bg_frame)
  return;

 osd_fps_x = OSD_FPS_X;
 osd_y = 232;


 PicoOpt &= ~POPT_DIS_32C_BORDER;
 if (is_32cols && currentConfig.scaling == EOPT_SCALE_HW) {
  scalex = 256;
  PicoOpt |= POPT_DIS_32C_BORDER;
  osd_fps_x = OSD_FPS_X - 64;
 }

 if (currentConfig.vscaling == EOPT_SCALE_HW) {
  ln_offs = start_line;
  scaley = line_count;
  osd_y = start_line + line_count - 8;
 }

 gp2x_video_RGB_setscaling(ln_offs, scalex, scaley);


 if (currentConfig.vscaling == EOPT_SCALE_SW && line_count < 240) {
  ld_lines = ld_left = line_count / (240 - line_count);
  PicoDrawSetCallbacks(EmuScanBegin16_ld, EmuScanEnd16_ld);
 }


 if (!is_16bit_mode())
  gp2x_memset_all_buffers(0, 0xe0, 320*240);
 else
  gp2x_memset_all_buffers(0, 0, 320*240*2);
}
