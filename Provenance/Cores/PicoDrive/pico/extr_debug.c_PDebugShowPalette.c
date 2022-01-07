
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dirtyPal; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 unsigned short* HighPal ;
 int PAHW_SMS ;
 TYPE_2__ Pico ;
 int PicoAHW ;
 int PicoDoHighPal555 (int) ;
 int PicoDoHighPal555M4 () ;

void PDebugShowPalette(unsigned short *screen, int stride)
{
  int x, y;

  Pico.m.dirtyPal = 1;
  if (PicoAHW & PAHW_SMS)
    PicoDoHighPal555M4();
  else
    PicoDoHighPal555(1);
  Pico.m.dirtyPal = 1;

  screen += 16*stride+8;
  for (y = 0; y < 8*4; y++)
    for (x = 0; x < 8*16; x++)
      screen[x + y*stride] = HighPal[x/8 + (y/8)*16];

  screen += 160;
  for (y = 0; y < 8*4; y++)
    for (x = 0; x < 8*16; x++)
      screen[x + y*stride] = HighPal[(x/8 + (y/8)*16) | 0x40];

  screen += stride*48;
  for (y = 0; y < 8*4; y++)
    for (x = 0; x < 8*16; x++)
      screen[x + y*stride] = HighPal[(x/8 + (y/8)*16) | 0x80];
}
