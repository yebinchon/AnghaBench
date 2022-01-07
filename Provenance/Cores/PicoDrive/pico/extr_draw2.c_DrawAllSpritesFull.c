
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PicoVideo {int* reg; } ;
struct TYPE_2__ {scalar_t__ vram; struct PicoVideo video; } ;


 int DrawSpriteFull (unsigned int*) ;
 int END_ROW ;
 TYPE_1__ Pico ;
 int START_ROW ;

__attribute__((used)) static void DrawAllSpritesFull(int prio, int maxwidth)
{
 struct PicoVideo *pvid=&Pico.video;
 int table=0,maskrange=0;
 int i,u,link=0;
 unsigned int *sprites[80];
 int y_min=START_ROW*8, y_max=END_ROW*8;

 table=pvid->reg[5]&0x7f;
 if (pvid->reg[12]&1) table&=0x7e;
 table<<=8;

 for (i=u=0; u < 80; u++)
 {
  unsigned int *sprite=((void*)0);
  int code, code2, sx, sy, height;

  sprite=(unsigned int *)(Pico.vram+((table+(link<<2))&0x7ffc));


  code = sprite[0];


  sy = (code&0x1ff)-0x80;
  height = (((code>>24)&3)+1)<<3;
  if(sy+height <= y_min || sy > y_max) goto nextsprite;


  code2=sprite[1];
  sx = (code2>>16)&0x1ff;
  if(!sx) {
   int to = sy+height;
   if(maskrange) {

    if((maskrange>>16)+1 >= sy && (maskrange>>16) <= to && (maskrange&0xffff) < sy) sy = (maskrange&0xffff);
    else if((maskrange&0xffff)-1 <= to && (maskrange&0xffff) >= sy && (maskrange>>16) > to) to = (maskrange>>16);
   }

   if(sy <= y_min && to+1 > y_min) y_min = to+1;
   else if(to >= y_max && sy-1 < y_max) y_max = sy-1;
   else maskrange=sy|(to<<16);

   goto nextsprite;
  }


  if(((code2>>15)&1) != prio) goto nextsprite;


  sx -= 0x78;
  if(sx <= -8*3 || sx >= maxwidth) goto nextsprite;


  sprites[i++]=sprite;

  nextsprite:

  link=(code>>16)&0x7f;
  if(!link) break;
 }


 for (i-- ;i>=0; i--)
 {
  DrawSpriteFull(sprites[i]);
 }
}
