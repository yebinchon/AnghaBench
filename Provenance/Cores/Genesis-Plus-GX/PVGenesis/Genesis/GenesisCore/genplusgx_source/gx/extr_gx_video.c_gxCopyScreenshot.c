
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_6__ {int width; int height; int data; int format; } ;
typedef TYPE_2__ gx_texture ;
struct TYPE_5__ {int w; int x; int h; int y; } ;
struct TYPE_7__ {TYPE_1__ viewport; } ;
typedef int GXTexObj ;
typedef int GXColor ;


 scalar_t__ BLACK ;
 int DCFlushRange (int ,int) ;
 int GX_Begin (int ,int ,int) ;
 int GX_CLAMP ;
 int GX_Color4u8 (int,int,int,int) ;
 int GX_CopyTex (int ,int ) ;
 int GX_DrawDone () ;
 int GX_End () ;
 int GX_FALSE ;
 int GX_Flush () ;
 int GX_InitTexObj (int *,int ,int ,int ,int ,int ,int ,int ) ;
 int GX_InvalidateTexAll () ;
 int GX_LoadTexObj (int *,int ) ;
 int GX_PixModeSync () ;
 int GX_Position2s16 (int,int) ;
 int GX_QUADS ;
 int GX_SetTexCopyDst (int,int,int ,int ) ;
 int GX_SetTexCopySrc (int ,int ,int,int) ;
 int GX_TEXMAP0 ;
 int GX_TF_RGB565 ;
 int GX_TF_RGBA8 ;
 int GX_TRUE ;
 int GX_TexCoord2f32 (double,double) ;
 int GX_VTXFMT0 ;
 TYPE_4__ bitmap ;
 int gxDrawRectangle (int ,int ,int,int,int,int ) ;
 int screenshot ;
 int texturemem ;
 int vheight ;
 int vwidth ;

void gxCopyScreenshot(gx_texture *texture)
{

  GXTexObj texobj;
  GX_InitTexObj(&texobj, texturemem, vwidth, vheight, GX_TF_RGB565, GX_CLAMP, GX_CLAMP, GX_FALSE);
  GX_LoadTexObj(&texobj, GX_TEXMAP0);
  GX_InvalidateTexAll();


  s32 w = ((bitmap.viewport.w + 2*bitmap.viewport.x) * 640) / bitmap.viewport.w;
  s32 h = (bitmap.viewport.h + 2*bitmap.viewport.y) * 2;
  s32 x = -w/2;
  s32 y = -(240+ 2*bitmap.viewport.y);


  if ((w < 640) || (h < 480))
  {
    gxDrawRectangle(0, 0, 640, 480, 255, (GXColor)BLACK);
  }


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


  texture->format = GX_TF_RGBA8;
  texture->width = 320;
  texture->height = bitmap.viewport.h;
  texture->data = screenshot;
  GX_SetTexCopySrc(0, 0, texture->width * 2, texture->height * 2);
  GX_SetTexCopyDst(texture->width, texture->height, texture->format, GX_TRUE);
  GX_DrawDone();
  GX_CopyTex(texture->data, GX_TRUE);
  GX_Flush();




  GX_PixModeSync();
  GX_LoadTexObj(&texobj, GX_TEXMAP0);
  GX_InvalidateTexAll();
  GX_Flush();
  DCFlushRange(texture->data, texture->width * texture->height * 4);
}
