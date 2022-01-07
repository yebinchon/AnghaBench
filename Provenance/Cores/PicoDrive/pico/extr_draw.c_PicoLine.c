
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* reg; } ;
struct TYPE_4__ {TYPE_1__ video; } ;


 int BackFill (int,int) ;
 int DrawDisplay (int) ;
 char* DrawLineDest ;
 int DrawLineDestIncrement ;
 int DrawScanline ;
 int FinalizeLine (int,int) ;
 int HighCol ;
 scalar_t__ HighColIncrement ;
 TYPE_2__ Pico ;
 int PicoScanBegin (int) ;
 int PicoScanEnd (int) ;
 int skip_next_line ;

__attribute__((used)) static void PicoLine(int line, int offs, int sh, int bgc)
{
  int skip = 0;

  if (skip_next_line > 0) {
    skip_next_line--;
    return;
  }

  DrawScanline = line;
  if (PicoScanBegin != ((void*)0))
    skip = PicoScanBegin(line + offs);

  if (skip) {
    skip_next_line = skip - 1;
    return;
  }


  BackFill(bgc, sh);
  if (Pico.video.reg[1]&0x40)
    DrawDisplay(sh);

  if (FinalizeLine != ((void*)0))
    FinalizeLine(sh, line);

  if (PicoScanEnd != ((void*)0))
    skip_next_line = PicoScanEnd(line + offs);

  HighCol += HighColIncrement;
  DrawLineDest = (char *)DrawLineDest + DrawLineDestIncrement;
}
