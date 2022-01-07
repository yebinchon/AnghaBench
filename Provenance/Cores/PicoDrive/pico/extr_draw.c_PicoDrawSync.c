
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* reg; } ;
struct TYPE_4__ {TYPE_1__ video; } ;


 int DrawBlankedLine (int,int,int,int) ;
 int DrawScanline ;
 TYPE_2__ Pico ;
 int PicoLine (int,int,int,int) ;
 int draw ;
 int pprof_end (int ) ;
 int pprof_start (int ) ;
 int rendlines ;

void PicoDrawSync(int to, int blank_last_line)
{
  int line, offs = 0;
  int sh = (Pico.video.reg[0xC] & 8) >> 3;
  int bgc = Pico.video.reg[7];

  pprof_start(draw);

  if (rendlines != 240)
    offs = 8;

  for (line = DrawScanline; line < to; line++)
  {
    PicoLine(line, offs, sh, bgc);
  }


  if (line <= to)
  {
    if (blank_last_line)
         DrawBlankedLine(line, offs, sh, bgc);
    else PicoLine(line, offs, sh, bgc);
    line++;
  }
  DrawScanline = line;

  pprof_end(draw);
}
