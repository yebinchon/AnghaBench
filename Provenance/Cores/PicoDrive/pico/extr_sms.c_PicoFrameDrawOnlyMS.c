
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoFrameStartMode4 () ;
 int PicoLineMode4 (int) ;

void PicoFrameDrawOnlyMS(void)
{
  int lines_vis = 192;
  int y;

  PicoFrameStartMode4();

  for (y = 0; y < lines_vis; y++)
    PicoLineMode4(y);
}
