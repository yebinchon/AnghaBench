
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* reg; } ;
struct TYPE_4__ {int pal; } ;
struct TYPE_6__ {TYPE_2__ video; TYPE_1__ m; } ;


 int BLUE1 ;
 int GREEN1 ;
 unsigned char** HighLnSpr ;
 int MAX_LINE_SPRITES ;
 TYPE_3__ Pico ;
 int RED1 ;
 int YELLOW1 ;
 int set16 (unsigned short*,int ,int) ;

void PDebugShowSpriteStats(unsigned short *screen, int stride)
{
  int lines, i, u, step;
  unsigned short *dest;
  unsigned char *p;

  step = (320-4*4-1) / MAX_LINE_SPRITES;
  lines = 240;
  if (!Pico.m.pal || !(Pico.video.reg[1]&8))
    lines = 224, screen += stride*8;

  for (i = 0; i < lines; i++)
  {
    dest = screen + stride*i;
    p = &HighLnSpr[i][0];


    for (u = 0; u < (p[0] & 0x7f); u++) {
      set16(dest, (p[3+u] & 0x80) ? YELLOW1 : GREEN1, step);
      dest += step;
    }


    dest = screen + stride*i + 320-4*4;
    if (p[1] & 0x40) set16(dest+4*0, GREEN1, 4);
    if (p[1] & 0x80) set16(dest+4*1, YELLOW1, 4);
    if (p[1] & 0x20) set16(dest+4*2, BLUE1, 4);
    if (p[1] & 0x10) set16(dest+4*3, RED1, 4);
  }


  for (i = step*5; i <= 320-4*4-1; i += step*5) {
    for (u = 0; u < lines; u++)
      screen[i + u*stride] = 0x182;
  }
}
