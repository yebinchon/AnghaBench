
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DOSMemSet (int,int,int) ;
 int FCEUDvmode ;
 int FlushPalette () ;
 int G320x200x256 ;
 int ScreenLoc ;
 int SetBorder () ;
 int TweakVGA (int) ;
 int vga_setmode (int ) ;
 int vidready ;

int InitVideo(void)
{
 vidready=0;
 switch(FCEUDvmode)
 {
  default:
  case 1:
  case 2:
  case 3:
  case 6:
  case 8:
         vga_setmode(G320x200x256);
  vidready|=1;
         ScreenLoc=0xa0000;
         TweakVGA(FCEUDvmode);
         SetBorder();
         DOSMemSet(ScreenLoc, 128, 256*256);
         break;
 }
 vidready|=2;
 FlushPalette();
 return 1;
}
