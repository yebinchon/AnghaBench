
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PicoVideo {int* reg; } ;
struct TYPE_2__ {int* vram; int* vsram; struct PicoVideo video; } ;


 int LINE_WIDTH ;
 TYPE_1__ Pico ;
 unsigned char* PicoDraw2FB ;
 int START_ROW ;
 int TileXflipYflip (unsigned char*,int,unsigned char) ;
 int TileXflipYnorm (unsigned char*,int,unsigned char) ;
 int TileXnormYflip (unsigned char*,int,unsigned char) ;
 int TileXnormYnorm (unsigned char*,int,unsigned char) ;

__attribute__((used)) static void DrawLayerFull(int plane, int *hcache, int planestart, int planeend)
{
 struct PicoVideo *pvid=&Pico.video;
 static char shift[4]={5,6,6,7};
 int width, height, ymask, htab;
 int nametab, hscroll=0, vscroll, cells;
 unsigned char *scrpos;
 int blank=-1, xmask, nametab_row, trow;


 cells = (planeend>>16)-(planestart>>16);
 planestart = planestart<<16>>16;
 planeend = planeend<<16>>16;



 htab=pvid->reg[13]<<9;


 htab+=plane;

 if(!(pvid->reg[11]&3)) {

  hscroll=Pico.vram[htab&0x7fff];
  htab = 0;
 }


 width=pvid->reg[16];
 height=(width>>4)&3; width&=3;

 xmask=(1<<shift[width ])-1;
 ymask=(height<<5)|0x1f;
 if(width == 1) ymask&=0x3f;
 else if(width>1) ymask =0x1f;


 if (plane==0) nametab=(pvid->reg[2]&0x38)<< 9;
 else nametab=(pvid->reg[4]&0x07)<<12;

 scrpos = PicoDraw2FB;
 scrpos+=8*LINE_WIDTH*(planestart-START_ROW);


 vscroll=Pico.vsram[plane]&0x1ff;
 scrpos+=(8-(vscroll&7))*LINE_WIDTH;
 if(vscroll&7) planeend++;

 *hcache++ = 8-(vscroll&7);


 for(trow = planestart; trow < planeend; trow++) {
  int cellc=cells,tilex,dx;




  nametab_row = nametab + (((trow+(vscroll>>3))&ymask)<<shift[width]);


  if(htab) {
   int htaddr=htab+(trow<<4);
   if(trow) htaddr-=(vscroll&7)<<1;
   hscroll=Pico.vram[htaddr&0x7fff];
  }


  tilex=(-hscroll)>>3;
  dx=((hscroll-1)&7)+1;
  if(dx != 8) cellc++;

  for (; cellc; dx+=8,tilex++,cellc--)
  {
   int code=0,addr=0,zero=0;

   unsigned char pal;

   code=Pico.vram[nametab_row+(tilex&xmask)];
   if (code==blank) continue;

   if (code>>15) {
    *hcache++ = code|(dx<<16)|(trow<<27);
    continue;
   }


   addr=(code&0x7ff)<<4;


   pal=(unsigned char)((code>>9)&0x30);

   switch((code>>11)&3) {
    case 0: zero=TileXnormYnorm(scrpos+dx,addr,pal); break;
    case 1: zero=TileXflipYnorm(scrpos+dx,addr,pal); break;
    case 2: zero=TileXnormYflip(scrpos+dx,addr,pal); break;
    case 3: zero=TileXflipYflip(scrpos+dx,addr,pal); break;
   }
   if(zero) blank=code;
  }

  scrpos += LINE_WIDTH*8;
 }

 *hcache = 0;
}
