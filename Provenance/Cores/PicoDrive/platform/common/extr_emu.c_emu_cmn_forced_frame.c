
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dirtyPal; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int PDF_RGB555 ;
 int POPT_ACC_SPRITES ;
 int POPT_ALT_RENDERER ;
 int POPT_EN_SOFTSCALE ;
 TYPE_2__ Pico ;
 int PicoDrawSetOutFormat (int ,int) ;
 int PicoFrame () ;
 int PicoFrameDrawOnly () ;
 int PicoOpt ;
 int g_screen_height ;
 int g_screen_ptr ;
 int g_screen_width ;
 int memset32 (int ,int ,int) ;

void emu_cmn_forced_frame(int no_scale, int do_emu)
{
 int po_old = PicoOpt;

 memset32(g_screen_ptr, 0, g_screen_width * g_screen_height * 2 / 4);

 PicoOpt &= ~POPT_ALT_RENDERER;
 PicoOpt |= POPT_ACC_SPRITES;
 if (!no_scale)
  PicoOpt |= POPT_EN_SOFTSCALE;

 PicoDrawSetOutFormat(PDF_RGB555, 1);
 Pico.m.dirtyPal = 1;
 if (do_emu)
  PicoFrame();
 else
  PicoFrameDrawOnly();

 PicoOpt = po_old;
}
