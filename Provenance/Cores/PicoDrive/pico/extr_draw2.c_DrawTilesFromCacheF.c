
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINE_WIDTH ;
 unsigned char* PicoDraw2FB ;
 int START_ROW ;
 int TileXflipYflip (unsigned char*,int,unsigned char) ;
 int TileXflipYnorm (unsigned char*,int,unsigned char) ;
 int TileXnormYflip (unsigned char*,int,unsigned char) ;
 int TileXnormYnorm (unsigned char*,int,unsigned char) ;

__attribute__((used)) static void DrawTilesFromCacheF(int *hc)
{
 int code, addr, zero = 0;
 unsigned int prevy=0xFFFFFFFF;

 unsigned char pal;
 short blank=-1;
 unsigned char *scrpos = PicoDraw2FB, *pd = 0;


 scrpos+=(*hc++)*LINE_WIDTH - START_ROW*LINE_WIDTH*8;

 while((code=*hc++)) {
  if((short)code == blank) continue;


  if(((unsigned)code>>27) != prevy) {
   prevy = (unsigned)code>>27;
   pd = scrpos + prevy*LINE_WIDTH*8;
  }


  addr=(code&0x7ff)<<4;

  pal=(unsigned char)((code>>9)&0x30);

  switch((code>>11)&3) {
   case 0: zero=TileXnormYnorm(pd+((code>>16)&0x1ff),addr,pal); break;
   case 1: zero=TileXflipYnorm(pd+((code>>16)&0x1ff),addr,pal); break;
   case 2: zero=TileXnormYflip(pd+((code>>16)&0x1ff),addr,pal); break;
   case 3: zero=TileXflipYflip(pd+((code>>16)&0x1ff),addr,pal); break;
  }

  if(zero) blank=(short)code;
 }
}
