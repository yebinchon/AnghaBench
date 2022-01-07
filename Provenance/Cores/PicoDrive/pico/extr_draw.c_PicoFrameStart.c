
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dirtyPal; } ;
struct TYPE_4__ {int* reg; } ;
struct TYPE_6__ {TYPE_2__ m; TYPE_1__ video; } ;


 char* DrawLineDest ;
 scalar_t__ DrawLineDestBase ;
 int DrawLineDestIncrement ;
 scalar_t__ DrawScanline ;
 scalar_t__ HighCol ;
 scalar_t__ HighColBase ;
 int HighColIncrement ;
 int PDRAW_32_COLS ;
 int PDRAW_INTERLACE ;
 int POPT_ALT_RENDERER ;
 TYPE_3__ Pico ;
 int PicoOpt ;
 int PrepareSprites (int) ;
 int emu_video_mode_change (int,int,int) ;
 int rendlines ;
 int rendstatus ;
 int rendstatus_old ;
 scalar_t__ skip_next_line ;

void PicoFrameStart(void)
{
  int offs = 8, lines = 224;


  rendstatus = 0;
  if ((Pico.video.reg[12] & 6) == 6)
    rendstatus |= PDRAW_INTERLACE;
  if (!(Pico.video.reg[12] & 1))
    rendstatus |= PDRAW_32_COLS;
  if (Pico.video.reg[1] & 8) {
    offs = 0;
    lines = 240;
  }

  if (rendstatus != rendstatus_old || lines != rendlines) {
    rendlines = lines;

    emu_video_mode_change((lines == 240) ? 0 : 8,
      lines, (Pico.video.reg[12] & 1) ? 0 : 1);
    rendstatus_old = rendstatus;
  }

  HighCol = HighColBase + offs * HighColIncrement;
  DrawLineDest = (char *)DrawLineDestBase + offs * DrawLineDestIncrement;
  DrawScanline = 0;
  skip_next_line = 0;

  if (PicoOpt & POPT_ALT_RENDERER)
    return;

  if (Pico.m.dirtyPal)
    Pico.m.dirtyPal = 2;
  PrepareSprites(1);
}
