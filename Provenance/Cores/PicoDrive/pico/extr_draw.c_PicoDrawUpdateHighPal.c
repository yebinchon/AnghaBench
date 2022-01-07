
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* reg; } ;
struct TYPE_4__ {TYPE_1__ video; } ;


 scalar_t__ HighPal ;
 int PDRAW_SONIC_MODE ;
 int POPT_ALT_RENDERER ;
 TYPE_2__ Pico ;
 int PicoDoHighPal555 (int) ;
 int PicoOpt ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int rendstatus ;

void PicoDrawUpdateHighPal(void)
{
  int sh = (Pico.video.reg[0xC] & 8) >> 3;
  if (PicoOpt & POPT_ALT_RENDERER)
    sh = 0;

  PicoDoHighPal555(sh);
  if (rendstatus & PDRAW_SONIC_MODE) {

    memcpy(HighPal + 0x40, HighPal, 0x40*2);
    memcpy(HighPal + 0x80, HighPal, 0x40*2);
  }
}
