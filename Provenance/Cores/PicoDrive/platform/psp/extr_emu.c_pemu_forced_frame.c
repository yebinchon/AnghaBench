
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int EmuOpt; } ;


 int EmuScanPrepare () ;
 int EmuScanSlowBegin ;
 int EmuScanSlowEnd ;
 int PDF_NONE ;
 int POPT_ACC_SPRITES ;
 int POPT_ALT_RENDERER ;
 int POPT_EN_SOFTSCALE ;
 int PicoDrawSetCallbacks (int ,int ) ;
 int PicoDrawSetOutFormat (int ,int ) ;
 int PicoFrameDrawOnly () ;
 int PicoOpt ;
 int* VRAM_CACHED_STUFF ;
 int blit1 () ;
 TYPE_1__ currentConfig ;
 int memset32 (int*,int,int) ;
 int memset32_uncached (int*,int ,int) ;
 scalar_t__ psp_screen ;
 int sceGuSync (int ,int ) ;
 int vidResetMode () ;

void pemu_forced_frame(int no_scale, int do_emu)
{
 int po_old = PicoOpt;
 int eo_old = currentConfig.EmuOpt;

 PicoOpt &= ~POPT_ALT_RENDERER;
 PicoOpt |= POPT_ACC_SPRITES;
 if (!no_scale)
  PicoOpt |= POPT_EN_SOFTSCALE;
 currentConfig.EmuOpt |= 0x80;

 vidResetMode();
 memset32(VRAM_CACHED_STUFF, 0xe0e0e0e0, 512*8/4);
 memset32((int *)VRAM_CACHED_STUFF + 512*232/4, 0xe0e0e0e0, 512*8/4);
 memset32_uncached((int *)psp_screen + 512*264*2/4, 0, 512*8*2/4);

 PicoDrawSetOutFormat(PDF_NONE, 0);
 PicoDrawSetCallbacks(EmuScanSlowBegin, EmuScanSlowEnd);
 EmuScanPrepare();
 PicoFrameDrawOnly();
 blit1();
 sceGuSync(0,0);

 PicoOpt = po_old;
 currentConfig.EmuOpt = eo_old;
}
