
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* reg; } ;
struct TYPE_4__ {scalar_t__ cram; TYPE_1__ video; } ;


 scalar_t__ HighPal ;
 int PDRAW_SONIC_MODE ;
 TYPE_2__ Pico ;
 int bgr444_to_rgb32 (int*,scalar_t__) ;
 int bgr444_to_rgb32_sh (int*,scalar_t__) ;
 int* localPal ;
 int memcpy32 (int*,int*,int) ;
 int rendstatus ;

__attribute__((used)) static int make_local_pal_md(int fast_mode)
{
 int pallen = 0xc0;

 bgr444_to_rgb32(localPal, Pico.cram);
 if (fast_mode)
  return 0x40;

 if (Pico.video.reg[0xC] & 8) {
  bgr444_to_rgb32_sh(localPal, Pico.cram);
  localPal[0xc0] = 0x0000c000;
  localPal[0xd0] = 0x00c00000;
  localPal[0xe0] = 0x00000000;
  localPal[0xf0] = 0x00ffffff;
  pallen = 0x100;
 }
 else if (rendstatus & PDRAW_SONIC_MODE) {
  bgr444_to_rgb32(localPal+0x40, HighPal);
  bgr444_to_rgb32(localPal+0x80, HighPal+0x40);
 }
 else
  memcpy32(localPal+0x80, localPal, 0x40);

 return pallen;
}
