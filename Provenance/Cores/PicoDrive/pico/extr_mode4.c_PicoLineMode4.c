
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* reg; } ;
struct TYPE_4__ {TYPE_1__ video; } ;


 int BackFill (int,int ) ;
 int DrawDisplayM4 (int) ;
 char* DrawLineDest ;
 int DrawLineDestIncrement ;
 int FinalizeLineM4 (int) ;
 TYPE_2__ Pico ;
 scalar_t__ PicoScanBegin (scalar_t__) ;
 scalar_t__ PicoScanEnd (scalar_t__) ;
 scalar_t__ screen_offset ;
 scalar_t__ skip_next_line ;

void PicoLineMode4(int line)
{
  if (skip_next_line > 0) {
    skip_next_line--;
    return;
  }

  if (PicoScanBegin != ((void*)0))
    skip_next_line = PicoScanBegin(line + screen_offset);


  BackFill(Pico.video.reg[7] & 0x0f, 0);
  if (Pico.video.reg[1] & 0x40)
    DrawDisplayM4(line);

  if (FinalizeLineM4 != ((void*)0))
    FinalizeLineM4(line);

  if (PicoScanEnd != ((void*)0))
    skip_next_line = PicoScanEnd(line + screen_offset);

  DrawLineDest = (char *)DrawLineDest + DrawLineDestIncrement;
}
