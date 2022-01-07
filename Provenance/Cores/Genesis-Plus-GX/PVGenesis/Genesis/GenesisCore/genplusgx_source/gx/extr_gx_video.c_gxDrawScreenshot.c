
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int s32 ;
struct TYPE_4__ {int xshift; int yshift; } ;
struct TYPE_3__ {int fbWidth; int viWidth; int efbHeight; int viHeight; } ;
typedef int GXTexObj ;
typedef int GXColor ;


 scalar_t__ BLACK ;
 int GX_Begin (int ,int ,int) ;
 int GX_CLAMP ;
 int GX_Color4u8 (int,int,int,int ) ;
 int GX_DrawDone () ;
 int GX_End () ;
 int GX_FALSE ;
 int GX_InitTexObj (int *,int ,int ,int ,int ,int ,int ,int ) ;
 int GX_InvalidateTexAll () ;
 int GX_LoadTexObj (int *,int ) ;
 int GX_Position2s16 (int,int) ;
 int GX_QUADS ;
 int GX_TEXMAP0 ;
 int GX_TF_RGB565 ;
 int GX_TexCoord2f32 (double,double) ;
 int GX_VTXFMT0 ;
 TYPE_2__ config ;
 int gxDrawRectangle (int ,int ,int,int,int,int ) ;
 int gxSetAspectRatio (int*,int*) ;
 int rmode ;
 int texturemem ;
 int vheight ;
 TYPE_1__* vmode ;
 int vwidth ;

void gxDrawScreenshot(u8 alpha)
{
  if (!rmode) return;


  GXTexObj texobj;
  GX_InitTexObj(&texobj, texturemem, vwidth, vheight, GX_TF_RGB565, GX_CLAMP, GX_CLAMP, GX_FALSE);
  GX_LoadTexObj(&texobj, GX_TEXMAP0);
  GX_InvalidateTexAll();


  int xscale,yscale;
  gxSetAspectRatio(&xscale, &yscale);


  xscale = (xscale * vmode->fbWidth) / vmode->viWidth;


  int xshift = (config.xshift * vmode->fbWidth) / vmode->viWidth;
  int yshift = (config.yshift * vmode->efbHeight) / vmode->viHeight;


  s32 x = xshift - xscale;
  s32 y = yshift - (yscale * 2);
  s32 w = xscale * 2;
  s32 h = yscale * 4;


  if ((w < 640) || (h < 480))
  {
    gxDrawRectangle(0, 0, 640, 480, 255, (GXColor)BLACK);
  }


  GX_Begin(GX_QUADS, GX_VTXFMT0, 4);
  GX_Position2s16(x,y+h);
  GX_Color4u8(0xff,0xff,0xff,alpha);
  GX_TexCoord2f32(0.0, 1.0);
  GX_Position2s16(x+w,y+h);
  GX_Color4u8(0xff,0xff,0xff,alpha);
  GX_TexCoord2f32(1.0, 1.0);
  GX_Position2s16(x+w,y);
  GX_Color4u8(0xff,0xff,0xff,alpha);
  GX_TexCoord2f32(1.0, 0.0);
  GX_Position2s16(x,y);
  GX_Color4u8(0xff,0xff,0xff,alpha);
  GX_TexCoord2f32(0.0, 0.0);
  GX_End();
  GX_DrawDone();
}
