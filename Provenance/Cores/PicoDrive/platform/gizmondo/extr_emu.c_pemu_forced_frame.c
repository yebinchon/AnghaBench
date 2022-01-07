
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dirtyPal; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {int EmuOpt; } ;


 int EmuScanBegin16 ;
 int PDF_RGB555 ;
 int POPT_ACC_SPRITES ;
 int POPT_EN_SOFTSCALE ;
 TYPE_3__ Pico ;
 int PicoDrawSetCallbacks (int ,int *) ;
 int PicoDrawSetOutFormat (int ,int ) ;
 int PicoFrameDrawOnly () ;
 int PicoOpt ;
 TYPE_2__ currentConfig ;
 int * fb_lock (int) ;
 int fb_unlock () ;
 int * giz_screen ;

void pemu_forced_frame(int no_scale, int do_emu)
{
 int po_old = PicoOpt;
 int eo_old = currentConfig.EmuOpt;

 PicoOpt &= ~0x10;
 PicoOpt |= POPT_ACC_SPRITES;
 if (!no_scale)
  PicoOpt |= POPT_EN_SOFTSCALE;
 currentConfig.EmuOpt |= 0x80;

 if (giz_screen == ((void*)0))
  giz_screen = fb_lock(1);

 PicoDrawSetOutFormat(PDF_RGB555, 0);
 PicoDrawSetCallbacks(EmuScanBegin16, ((void*)0));
 Pico.m.dirtyPal = 1;
 PicoFrameDrawOnly();

 fb_unlock();
 giz_screen = ((void*)0);

 PicoOpt = po_old;
 currentConfig.EmuOpt = eo_old;
}
