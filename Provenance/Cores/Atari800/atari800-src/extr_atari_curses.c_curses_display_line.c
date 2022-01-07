
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int ANTIC_DMACTL ;
 int ANTIC_ypos ;


 int GTIA_COLPF0 ;
 int GTIA_COLPF1 ;
 int GTIA_COLPF2 ;
 int GTIA_COLPF3 ;
 int LIGHT_THRESHOLD ;
 int** curses_screen ;

void curses_display_line(int anticmode, const UBYTE *screendata)
{
 int y;
 int *p;
 int w;
 if (ANTIC_ypos < 32 || ANTIC_ypos >= 224)
  return;
 y = (ANTIC_ypos >> 3) - 4;
 p = &(curses_screen[y][0]);
 switch (anticmode) {
 case 2:
 case 3:
 case 4:
 case 5:
  switch (ANTIC_DMACTL & 3) {
  case 1:
   p += 4;
   w = 32;
   break;
  case 2:
   w = 40;
   break;
  case 3:
   screendata += 4;
   w = 40;
   break;
  default:
   return;
  }
  do {
   static const int offset[8] = {
    0x20,
    0x20,
    129,
    0,
    -0x80 + 0x20 + 128,
    -0x80 + 0x20 + 128,
    -0x80 + 129 + 128,
    -0x80 + 128
   };
   UBYTE c = *screendata++;



   if (c == 0x7f)
    *p = '>' + 129;
   else if (c == 0xff)
    *p = '>' + 129 + 128;
   else
    *p = c + offset[c >> 5];
   p++;
  } while (--w);
  break;
 case 6:
 case 7:
  switch (ANTIC_DMACTL & 3) {
  case 1:
   p += 12;
   w = 16;
   break;
  case 2:
   p += 10;
   w = 20;
   break;
  case 3:
   p += 8;
   w = 24;
   break;
  default:
   return;
  }
  {

   int light[4];
   light[0] = (GTIA_COLPF0 & 0x0e) >= 0x0c ? 0x20 + 129 : 0x20;
   light[1] = (GTIA_COLPF1 & 0x0e) >= 0x0c ? -0x40 + 0x20 + 129 : -0x40 + 0x20;
   light[2] = (GTIA_COLPF2 & 0x0e) >= 0x0c ? -0x80 + 0x20 + 129 : -0x80 + 0x20;
   light[3] = (GTIA_COLPF3 & 0x0e) >= 0x0c ? -0xc0 + 0x20 + 129 : -0xc0 + 0x20;
   do {
    *p++ = *screendata + light[*screendata >> 6];
    screendata++;
   } while (--w);
  }
  break;
 default:
  break;
 }
}
