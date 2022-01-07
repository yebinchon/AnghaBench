
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PicoVideo {int* reg; } ;
struct TYPE_2__ {scalar_t__ vram; struct PicoVideo video; } ;


 int MVP ;
 TYPE_1__ Pico ;
 char* dstr ;
 int sprintf (char*,char*,int,int,int,int,int,char*) ;

char *PDebugSpriteList(void)
{
  struct PicoVideo *pvid=&Pico.video;
  int table=0,u,link=0;
  int max_sprites = 80;
  char *dstrp;

  if (!(pvid->reg[12]&1))
    max_sprites = 64;

  dstr[0] = 0;
  dstrp = dstr;

  table=pvid->reg[5]&0x7f;
  if (pvid->reg[12]&1) table&=0x7e;
  table<<=8;

  for (u=0; u < max_sprites; u++)
  {
    unsigned int *sprite;
    int code, code2, sx, sy, height;

    sprite=(unsigned int *)(Pico.vram+((table+(link<<2))&0x7ffc));


    code = sprite[0];


    sy = (code&0x1ff)-0x80;
    height = ((code>>24)&3)+1;


    code2 = sprite[1];
    sx = ((code2>>16)&0x1ff)-0x80;

    sprintf(dstrp, "#%02i x:%4i y:%4i %ix%i %s\n", u, sx, sy, ((code>>26)&3)+1, height,
      (code2&0x8000)?"hi":"lo");
    MVP;

    link=(code>>16)&0x7f;
    if(!link) break;
  }

  return dstr;
}
