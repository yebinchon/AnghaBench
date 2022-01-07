
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dirtyPal; int pal; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {int EmuOpt; scalar_t__ scaling; } ;


 scalar_t__ EOPT_SCALE_SW ;
 int EOPT_WIZ_TEAR_FIX ;
 int * EmuScanBegin16_rot ;
 int * EmuScanBegin8_rot ;
 int * EmuScanEnd16_rot ;
 int * EmuScanEnd8_rot ;
 int PAHW_32X ;
 int PAHW_SMS ;
 int PDF_8BIT ;
 int PDF_NONE ;
 int PDF_RGB555 ;
 int POPT_ALT_RENDERER ;
 int POPT_EN_SOFTSCALE ;
 TYPE_3__ Pico ;
 int PicoAHW ;
 int PicoDrawSetCallbacks (int *,int *) ;
 int PicoDrawSetOutBuf (int ,int) ;
 int PicoDrawSetOutFormat (int ,int) ;
 int PicoOpt ;



 TYPE_2__ currentConfig ;
 int emu_osd_text16 ;
 int * emu_scan_begin ;
 int * emu_scan_end ;
 int g_screen_ptr ;
 int g_screen_width ;
 int get_renderer () ;
 int gp2x_memset_all_buffers (int ,int,int) ;
 int gp2x_video_changemode (int,int ) ;
 int gp2x_video_setpalette (int*,int) ;
 int gp2x_video_wait_vsync () ;
 scalar_t__ is_16bit_mode () ;
 int* localPal ;
 int make_local_pal ;
 int make_local_pal_md ;
 int make_local_pal_sms ;
 int osd_text ;
 int osd_text16_rot ;
 int osd_text8 ;
 int osd_text8_rot ;
 int printf (char*) ;
 int vidcpyM2 ;
 int vidcpy_m2 ;
 int vidcpy_m2_rot ;

__attribute__((used)) static void vid_reset_mode(void)
{
 int gp2x_mode = 16;
 int renderer = get_renderer();

 PicoOpt &= ~POPT_ALT_RENDERER;
 emu_scan_begin = ((void*)0);
 emu_scan_end = ((void*)0);

 switch (renderer) {
 case 130:
  PicoDrawSetOutFormat(PDF_RGB555, 0);
  PicoDrawSetOutBuf(g_screen_ptr, g_screen_width * 2);
  break;
 case 129:
  PicoDrawSetOutFormat(PDF_8BIT, 0);
  PicoDrawSetOutBuf(g_screen_ptr, g_screen_width);
  gp2x_mode = 8;
  break;
 case 128:
  PicoOpt |= POPT_ALT_RENDERER;
  PicoDrawSetOutFormat(PDF_NONE, 0);
  vidcpyM2 = vidcpy_m2;
  gp2x_mode = 8;
  break;
 default:
  printf("bad renderer\n");
  break;
 }

 if (PicoAHW & PAHW_32X) {

  if (renderer == 130 && (currentConfig.EmuOpt & EOPT_WIZ_TEAR_FIX)) {
   PicoDrawSetOutFormat(PDF_RGB555, 1);
  }
  else {
   PicoDrawSetOutFormat(PDF_NONE, 0);
  }
  PicoDrawSetOutBuf(g_screen_ptr, g_screen_width * 2);
  gp2x_mode = 16;
 }

 if (currentConfig.EmuOpt & EOPT_WIZ_TEAR_FIX) {
  if ((PicoAHW & PAHW_32X) || renderer == 130) {
   emu_scan_begin = EmuScanBegin16_rot;
   emu_scan_end = EmuScanEnd16_rot;
  }
  else if (renderer == 129) {
   emu_scan_begin = EmuScanBegin8_rot;
   emu_scan_end = EmuScanEnd8_rot;
  }
  else if (renderer == 128)
   vidcpyM2 = vidcpy_m2_rot;
 }

 PicoDrawSetCallbacks(emu_scan_begin, emu_scan_end);

 if (is_16bit_mode())
  osd_text = (currentConfig.EmuOpt & EOPT_WIZ_TEAR_FIX) ? osd_text16_rot : emu_osd_text16;
 else
  osd_text = (currentConfig.EmuOpt & EOPT_WIZ_TEAR_FIX) ? osd_text8_rot : osd_text8;

 gp2x_video_wait_vsync();
 if (!is_16bit_mode()) {

  localPal[0xc0] = 0x0000c000;
  localPal[0xd0] = 0x00c00000;
  localPal[0xe0] = 0x00000000;
  localPal[0xf0] = 0x00ffffff;
  gp2x_video_setpalette(localPal, 0x100);
  gp2x_memset_all_buffers(0, 0xe0, 320*240);
 }
 else
  gp2x_memset_all_buffers(0, 0, 320*240*2);

 if (currentConfig.EmuOpt & EOPT_WIZ_TEAR_FIX)
  gp2x_mode = -gp2x_mode;

 gp2x_video_changemode(gp2x_mode, Pico.m.pal);

 Pico.m.dirtyPal = 1;

 PicoOpt &= ~POPT_EN_SOFTSCALE;
 if (currentConfig.scaling == EOPT_SCALE_SW)
  PicoOpt |= POPT_EN_SOFTSCALE;


 make_local_pal = (PicoAHW & PAHW_SMS) ? make_local_pal_sms : make_local_pal_md;
}
