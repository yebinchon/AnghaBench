
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* reg; } ;
struct TYPE_5__ {scalar_t__ dirtyPal; } ;
struct TYPE_8__ {TYPE_2__ video; int cram; TYPE_1__ m; } ;
struct TYPE_7__ {int EmuOpt; } ;


 int OSD_FPS_X ;
 int PAHW_MCD ;
 int PAHW_SVP ;
 TYPE_4__ Pico ;
 int PicoAHW ;
 scalar_t__ PicoDraw2FB ;
 int PicoOpt ;
 int cd_leds () ;
 TYPE_3__ currentConfig ;
 scalar_t__ giz_screen ;
 int* localPal ;
 int memcpy32 (void*,void*,int) ;
 int memset32 (int*,int,int) ;
 int osd_text (int,int,char const*) ;
 int vidConvCpyRGB565 (int*,int ,int) ;
 int vidCpy8to16 (unsigned short*,scalar_t__,int*,int) ;

__attribute__((used)) static void blit(const char *fps, const char *notice)
{
 int emu_opt = currentConfig.EmuOpt;

 if (PicoOpt&0x10)
 {
  int lines_flags = 224;

  if (Pico.m.dirtyPal) {
   Pico.m.dirtyPal = 0;
   vidConvCpyRGB565(localPal, Pico.cram, 0x40);
  }

  if (PicoAHW & PAHW_SVP)
   memset32((int *)(PicoDraw2FB+328*8+328*223), 0xe0e0e0e0, 328);
  if (!(Pico.video.reg[12]&1)) lines_flags|=0x10000;
  if (currentConfig.EmuOpt&0x4000)
   lines_flags|=0x40000;
  vidCpy8to16((unsigned short *)giz_screen+321*8, PicoDraw2FB+328*8, localPal, lines_flags);
 }
 else if (!(emu_opt&0x80))
 {
  int lines_flags;

  if (Pico.m.dirtyPal) {
   Pico.m.dirtyPal = 0;
   vidConvCpyRGB565(localPal, Pico.cram, 0x40);
   if (Pico.video.reg[0xC]&8) {


    memcpy32((void *)(localPal+0xc0), (void *)(localPal+0x40), 0x40*2/4);
    localPal[0xc0] = 0x0600;
    localPal[0xd0] = 0xc000;
    localPal[0xe0] = 0x0000;
    localPal[0xf0] = 0xffff;
   }





  }
  lines_flags = (Pico.video.reg[1]&8) ? 240 : 224;
  if (!(Pico.video.reg[12]&1)) lines_flags|=0x10000;
  if (currentConfig.EmuOpt&0x4000)
   lines_flags|=0x40000;
  vidCpy8to16((unsigned short *)giz_screen+321*8, PicoDraw2FB+328*8, localPal, lines_flags);
 }

 if (notice || (emu_opt & 2)) {
  int h = 232;
  if (notice) osd_text(4, h, notice);
  if (emu_opt & 2) osd_text(OSD_FPS_X, h, fps);
 }

 if ((emu_opt & 0x400) && (PicoAHW & PAHW_MCD))
  cd_leds();
}
