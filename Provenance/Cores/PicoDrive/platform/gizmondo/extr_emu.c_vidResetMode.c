
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
 int EmuScanBegin8 ;
 int PDF_NONE ;
 int PDF_RGB555 ;
 TYPE_3__ Pico ;
 int PicoDrawSetCallbacks (int ,int *) ;
 int PicoDrawSetOutFormat (int ,int ) ;
 int PicoOpt ;
 TYPE_2__ currentConfig ;
 int * fb_lock (int) ;
 int fb_unlock () ;
 int * giz_screen ;
 int* localPal ;
 int memset32 (int *,int ,int) ;

__attribute__((used)) static void vidResetMode(void)
{
 giz_screen = fb_lock(1);

 if (PicoOpt&0x10) {
 } else if (currentConfig.EmuOpt&0x80) {
  PicoDrawSetOutFormat(PDF_RGB555, 0);
  PicoDrawSetCallbacks(EmuScanBegin16, ((void*)0));
 } else {
  PicoDrawSetOutFormat(PDF_NONE, 0);
  PicoDrawSetCallbacks(EmuScanBegin8, ((void*)0));
 }
 if ((PicoOpt&0x10) || !(currentConfig.EmuOpt&0x80)) {

  localPal[0xc0] = 0x0600;
  localPal[0xd0] = 0xc000;
  localPal[0xe0] = 0x0000;
  localPal[0xf0] = 0xffff;
 }
 Pico.m.dirtyPal = 1;

 memset32(giz_screen, 0, 321*240*2/4);
 if (currentConfig.EmuOpt&0x8000) {
  fb_unlock();
  giz_screen = fb_lock(0);
  memset32(giz_screen, 0, 321*240*2/4);
 }
 fb_unlock();
 giz_screen = ((void*)0);
}
