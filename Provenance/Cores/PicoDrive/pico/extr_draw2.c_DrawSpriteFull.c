
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int END_ROW ;
 int LINE_WIDTH ;
 unsigned char* PicoDraw2FB ;
 int START_ROW ;
 int TileXflipYflip (unsigned char*,int,unsigned char) ;
 int TileXflipYnorm (unsigned char*,int,unsigned char) ;
 int TileXnormYflip (unsigned char*,int,unsigned char) ;
 int TileXnormYnorm (unsigned char*,int,unsigned char) ;

__attribute__((used)) static void DrawSpriteFull(unsigned int *sprite)
{
 int width=0,height=0;

 unsigned char pal;
 int tile,code,tdeltax,tdeltay;
 unsigned char *scrpos;
 int sx, sy;

 sy=sprite[0];
 height=sy>>24;
 sy=(sy&0x1ff)-0x78;
 width=(height>>2)&3; height&=3;
 width++; height++;

 code=sprite[1];
 sx=((code>>16)&0x1ff)-0x78;

 tile=code&0x7ff;
 tdeltax=height;
 tdeltay=1;
 if (code&0x0800) { tdeltax=-tdeltax; tile+=height*(width-1); }
 if (code&0x1000) { tdeltay=-tdeltay; tile+=height-1; }



 pal=(unsigned char)((code>>9)&0x30);


 while(sy <= START_ROW*8) { sy+=8; tile+=tdeltay; height--; }

 scrpos = PicoDraw2FB;
 scrpos+=(sy-START_ROW*8)*LINE_WIDTH;

 for (; height > 0; height--, sy+=8, tile+=tdeltay)
 {
  int w = width, x=sx, t=tile;

  if(sy >= END_ROW*8+8) return;

  for (; w; w--,x+=8,t+=tdeltax)
  {
   if(x<=0) continue;
   if(x>=328) break;

   t&=0x7fff;
   switch((code>>11)&3) {
    case 0: TileXnormYnorm(scrpos+x,t<<4,pal); break;
    case 1: TileXflipYnorm(scrpos+x,t<<4,pal); break;
    case 2: TileXnormYflip(scrpos+x,t<<4,pal); break;
    case 3: TileXflipYflip(scrpos+x,t<<4,pal); break;
   }
  }

  scrpos+=8*LINE_WIDTH;
 }
}
