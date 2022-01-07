
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scanline; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int DrawScanline ;
 int POPT_ALT_RENDERER ;
 TYPE_2__ Pico ;
 int PicoDrawSync (int,int) ;
 int PicoOpt ;
 int PicoSkipFrame ;

__attribute__((used)) static void DrawSync(int blank_on)
{
  if (Pico.m.scanline < 224 && !(PicoOpt & POPT_ALT_RENDERER) &&
      !PicoSkipFrame && DrawScanline <= Pico.m.scanline) {

    PicoDrawSync(Pico.m.scanline, blank_on);
  }
}
