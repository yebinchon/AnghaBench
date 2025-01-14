
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int width; int height; int data; } ;
typedef TYPE_2__ gx_texture ;
struct TYPE_7__ {int x; int y; } ;
struct TYPE_11__ {TYPE_1__ viewport; } ;
struct TYPE_10__ {int aspect; int bilinear; } ;
struct TYPE_9__ {int fbWidth; int viWidth; int efbHeight; int viHeight; } ;
typedef int GXTexObj ;


 int GX_ANISO_1 ;
 int GX_ANISO_4 ;
 int GX_Begin (int ,int ,int) ;
 int GX_CLAMP ;
 int GX_Color4u8 (int,int,int,int) ;
 int GX_End () ;
 int GX_FALSE ;
 int GX_InitTexObj (int *,int ,int,int,int ,int ,int ,int ) ;
 int GX_InitTexObjLOD (int *,int ,int ,double,double,double,int ,int ,int ) ;
 int GX_InvalidateTexAll () ;
 int GX_LINEAR ;
 int GX_LIN_MIP_LIN ;
 int GX_LoadTexObj (int *,int ) ;
 int GX_NEAR ;
 int GX_NEAR_MIP_NEAR ;
 int GX_Position2s16 (int,int) ;
 int GX_QUADS ;
 int GX_TEXMAP0 ;
 int GX_TF_RGB565 ;
 int GX_TF_RGBA8 ;
 int GX_TRUE ;
 int GX_TexCoord2f32 (double,double) ;
 int GX_VTXFMT0 ;
 TYPE_6__ bitmap ;
 TYPE_5__ config ;
 int gxResetRendering (int) ;
 TYPE_3__* rmode ;
 int* square ;
 int texturemem ;
 int vheight ;
 int vwidth ;

__attribute__((used)) static void gxDrawCrosshair(gx_texture *texture, int x, int y)
{

  int w = (texture->width * rmode->fbWidth) / (rmode->viWidth);
  int h = (texture->height * rmode->efbHeight) / (rmode->viHeight);


  if (config.aspect & 2) w = (w * 3) / 4;


  int xwidth = square[3] - square[9];
  int ywidth = square[4] - square[10];


  x = (((x + bitmap.viewport.x) * xwidth) / vwidth) + square[9] - w/2;
  y = (((y + bitmap.viewport.y) * ywidth) / vheight) + square[10] - h/2;


  gxResetRendering(1);


  GXTexObj texObj;
  GX_InitTexObj(&texObj, texture->data, texture->width, texture->height, GX_TF_RGBA8, GX_CLAMP, GX_CLAMP, GX_FALSE);
  GX_InitTexObjLOD(&texObj,GX_LINEAR,GX_LIN_MIP_LIN,0.0,10.0,0.0,GX_FALSE,GX_TRUE,GX_ANISO_4);
  GX_LoadTexObj(&texObj, GX_TEXMAP0);
  GX_InvalidateTexAll();


  GX_Begin(GX_QUADS, GX_VTXFMT0, 4);
  GX_Position2s16(x,y+h);
  GX_Color4u8(0xff,0xff,0xff,0xff);
  GX_TexCoord2f32(0.0, 1.0);
  GX_Position2s16(x+w,y+h);
  GX_Color4u8(0xff,0xff,0xff,0xff);
  GX_TexCoord2f32(1.0, 1.0);
  GX_Position2s16(x+w,y);
  GX_Color4u8(0xff,0xff,0xff,0xff);
  GX_TexCoord2f32(1.0, 0.0);
  GX_Position2s16(x,y);
  GX_Color4u8(0xff,0xff,0xff,0xff);
  GX_TexCoord2f32(0.0, 0.0);
  GX_End();


  gxResetRendering(0);


  GXTexObj texobj;
  GX_InitTexObj(&texobj, texturemem, vwidth, vheight, GX_TF_RGB565, GX_CLAMP, GX_CLAMP, GX_FALSE);
  if (!config.bilinear)
  {
    GX_InitTexObjLOD(&texobj,GX_NEAR,GX_NEAR_MIP_NEAR,0.0,10.0,0.0,GX_FALSE,GX_FALSE,GX_ANISO_1);
  }
  GX_LoadTexObj(&texobj, GX_TEXMAP0);
  GX_InvalidateTexAll();
}
