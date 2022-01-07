
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PicoVideo {int* reg; } ;
struct TYPE_2__ {int* vram; struct PicoVideo video; } ;


 int LINE_WIDTH ;
 TYPE_1__ Pico ;
 unsigned char* PicoDraw2FB ;
 int START_ROW ;
 int TileXflipYflip (unsigned char*,int,unsigned char) ;
 int TileXflipYnorm (unsigned char*,int,unsigned char) ;
 int TileXnormYflip (unsigned char*,int,unsigned char) ;
 int TileXnormYnorm (unsigned char*,int,unsigned char) ;

__attribute__((used)) static void DrawWindowFull(int start, int end, int prio)
{
 struct PicoVideo *pvid=&Pico.video;
 int nametab, nametab_step, trow, tilex, blank=-1, code;
 unsigned char *scrpos = PicoDraw2FB;
 int tile_start, tile_end;


 tile_start = start>>16;
 tile_end = end>>16;
 start = start<<16>>16;
 end = end<<16>>16;


 if (pvid->reg[12]&1)
 {
  nametab=(pvid->reg[3]&0x3c)<<9;
  nametab_step = 1<<6;
 }
 else
 {
  nametab=(pvid->reg[3]&0x3e)<<9;
  nametab_step = 1<<5;
 }
 nametab += nametab_step*start;


 code=Pico.vram[nametab+tile_start];
 if ((code>>15) != prio) return;

 scrpos+=8*LINE_WIDTH+8;
 scrpos+=8*LINE_WIDTH*(start-START_ROW);


 for(trow = start; trow < end; trow++, nametab+=nametab_step) {
  for (tilex=tile_start; tilex<tile_end; tilex++)
  {
   int code,addr,zero=0;

   unsigned char pal;

   code=Pico.vram[nametab+tilex];
   if (code==blank) continue;


   addr=(code&0x7ff)<<4;


   pal=(unsigned char)((code>>9)&0x30);

   switch((code>>11)&3) {
    case 0: zero=TileXnormYnorm(scrpos+(tilex<<3),addr,pal); break;
    case 1: zero=TileXflipYnorm(scrpos+(tilex<<3),addr,pal); break;
    case 2: zero=TileXnormYflip(scrpos+(tilex<<3),addr,pal); break;
    case 3: zero=TileXflipYflip(scrpos+(tilex<<3),addr,pal); break;
   }
   if(zero) blank=code;
  }

  scrpos += LINE_WIDTH*8;
 }
}
