
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoFrameHints () ;
 int PicoFrameStart () ;
 int pcd_prepare_frame () ;

void PicoFrameMCD(void)
{
  PicoFrameStart();

  pcd_prepare_frame();
  PicoFrameHints();
}
