
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TileStrip {int* hc; int cells; int xmask; int nametab; int line; int hscroll; } ;
struct PicoVideo {int* reg; } ;
struct TYPE_2__ {int* vsram; int * vram; struct PicoVideo video; } ;


 int DrawScanline ;
 int DrawStrip (struct TileStrip*,int,int) ;
 int DrawStripInterlace (struct TileStrip*) ;
 int DrawStripVSRam (struct TileStrip*,int,int) ;
 TYPE_1__ Pico ;

__attribute__((used)) static void DrawLayer(int plane_sh, int *hcache, int cellskip, int maxcells)
{
  struct PicoVideo *pvid=&Pico.video;
  const char shift[4]={5,6,5,7};
  struct TileStrip ts;
  int width, height, ymask;
  int vscroll, htab;

  ts.hc=hcache;
  ts.cells=maxcells;




  width=pvid->reg[16];
  height=(width>>4)&3; width&=3;

  ts.xmask=(1<<shift[width])-1;
  ymask=(height<<8)|0xff;
  if(width == 1) ymask&=0x1ff;
  else if(width>1) ymask =0x0ff;


  if (plane_sh&1) ts.nametab=(pvid->reg[4]&0x07)<<12;
  else ts.nametab=(pvid->reg[2]&0x38)<< 9;

  htab=pvid->reg[13]<<9;
  if ( pvid->reg[11]&2) htab+=DrawScanline<<1;
  if ((pvid->reg[11]&1)==0) htab&=~0xf;
  htab+=plane_sh&1;


  ts.hscroll=Pico.vram[htab&0x7fff];

  if((pvid->reg[12]&6) == 6) {

    vscroll=Pico.vsram[plane_sh&1];


    ts.line=(vscroll+(DrawScanline<<1))&((ymask<<1)|1);
    ts.nametab+=(ts.line>>4)<<shift[width];

    DrawStripInterlace(&ts);
  } else if( pvid->reg[11]&4) {


    ts.line=ymask|(shift[width]<<24);
    DrawStripVSRam(&ts, plane_sh, cellskip);
  } else {
    vscroll=Pico.vsram[plane_sh&1];


    ts.line=(vscroll+DrawScanline)&ymask;
    ts.nametab+=(ts.line>>3)<<shift[width];

    DrawStrip(&ts, plane_sh, cellskip);
  }
}
