
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEXT ;
 int vga_setmode (int ) ;
 scalar_t__ vidready ;

void KillVideo(void)
{
 if(vidready)
 {
  vga_setmode(TEXT);
  vidready=0;
 }
}
