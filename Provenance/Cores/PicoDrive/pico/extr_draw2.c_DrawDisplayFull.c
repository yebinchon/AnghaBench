
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PicoVideo {int* reg; } ;
struct TYPE_2__ {struct PicoVideo video; } ;


 int DrawAllSpritesFull (int,int) ;
 int DrawLayerFull (int,scalar_t__*,int,int) ;
 int DrawTilesFromCacheF (scalar_t__*) ;
 int DrawWindowFull (int,int,int) ;
 int END_ROW ;
 scalar_t__* HighCache2A ;
 scalar_t__* HighCache2B ;
 int PDRAW_LAYERA_ON ;
 int PDRAW_LAYERB_ON ;
 int PDRAW_SPRITES_HI_ON ;
 int PDRAW_SPRITES_LOW_ON ;
 TYPE_1__ Pico ;
 int PicoDrawMask ;
 int START_ROW ;

__attribute__((used)) static void DrawDisplayFull(void)
{
 struct PicoVideo *pvid=&Pico.video;
 int win, edge=0, hvwin=0;
 int planestart=START_ROW, planeend=END_ROW;
 int winstart=START_ROW, winend=END_ROW;
 int maxw, maxcolc;

 if(pvid->reg[12]&1) {
  maxw = 328; maxcolc = 40;
 } else {
  maxw = 264; maxcolc = 32;
 }


 if ((win=pvid->reg[0x12]))
 {
  hvwin=1;
  edge=win&0x1f;
  if(win == 0x80) {

   hvwin=4;
  } else if(win < 0x80) {

        if(edge <= START_ROW) hvwin=0;
   else if(edge >= END_ROW) hvwin=4;
   else planestart = winend = edge;
  } else if(win > 0x80) {

   if(edge >= END_ROW) hvwin=0;
   else planeend = winstart = edge;
  }
 }


 if (hvwin != 4)
 {
  win=pvid->reg[0x11];
  edge=win&0x1f;
  if (win&0x80) {
   if(!edge) hvwin=4;
   else if(edge < (maxcolc>>1)) {

    hvwin|=2;
    planeend|=edge<<17;
    winstart|=edge<<17;
    winend|=maxcolc<<16;
   }
  } else {
   if(edge >= (maxcolc>>1)) hvwin=4;
   else if(edge) {

    hvwin|=2;
    winend|=edge<<17;
    planestart|=edge<<17;
    planeend|=maxcolc<<16;
   }
  }
 }

 if (hvwin==1) { winend|=maxcolc<<16; planeend|=maxcolc<<16; }

 HighCache2A[1] = HighCache2B[1] = 0;
 if (PicoDrawMask & PDRAW_LAYERB_ON)
  DrawLayerFull(1, HighCache2B, START_ROW, (maxcolc<<16)|END_ROW);
 if (PicoDrawMask & PDRAW_LAYERA_ON) switch (hvwin)
 {
  case 4:

  DrawWindowFull(START_ROW, (maxcolc<<16)|END_ROW, 0);
  break;

  case 3:

  DrawLayerFull(0, HighCache2A, planestart, planeend);
  DrawWindowFull( winstart&~0xff0000, (winend&~0xff0000)|(maxcolc<<16), 0);
  DrawWindowFull((winstart&~0xff)|START_ROW, (winend&~0xff)|END_ROW, 0);
  break;

  case 2:
  case 1:

  DrawLayerFull(0, HighCache2A, planestart, planeend);
  DrawWindowFull(winstart, winend, 0);
  break;

  default:

  DrawLayerFull(0, HighCache2A, START_ROW, (maxcolc<<16)|END_ROW);
  break;
 }
 if (PicoDrawMask & PDRAW_SPRITES_LOW_ON)
  DrawAllSpritesFull(0, maxw);

 if (HighCache2B[1]) DrawTilesFromCacheF(HighCache2B);
 if (HighCache2A[1]) DrawTilesFromCacheF(HighCache2A);
 if (PicoDrawMask & PDRAW_LAYERA_ON) switch (hvwin)
 {
  case 4:

  DrawWindowFull(START_ROW, (maxcolc<<16)|END_ROW, 1);
  break;

  case 3:

  DrawWindowFull( winstart&~0xff0000, (winend&~0xff0000)|(maxcolc<<16), 1);
  DrawWindowFull((winstart&~0xff)|START_ROW, (winend&~0xff)|END_ROW, 1);
  break;

  case 2:
  case 1:

  DrawWindowFull(winstart, winend, 1);
  break;
 }
 if (PicoDrawMask & PDRAW_SPRITES_HI_ON)
  DrawAllSpritesFull(1, maxw);
}
