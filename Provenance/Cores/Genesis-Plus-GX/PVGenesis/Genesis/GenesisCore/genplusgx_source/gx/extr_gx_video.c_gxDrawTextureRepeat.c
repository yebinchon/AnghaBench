
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ s32 ;
struct TYPE_4__ {scalar_t__ height; scalar_t__ width; scalar_t__ data; } ;
typedef TYPE_1__ gx_texture ;
typedef double f32 ;
struct TYPE_5__ {int fbWidth; int efbHeight; } ;
typedef int GXTexObj ;


 int GX_Begin (int ,int ,int) ;
 int GX_Color4u8 (int,int,int,int ) ;
 int GX_DrawDone () ;
 int GX_End () ;
 int GX_FALSE ;
 int GX_InitTexObj (int *,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 int GX_InvalidateTexAll () ;
 int GX_LoadTexObj (int *,int ) ;
 int GX_Position2s16 (scalar_t__,scalar_t__) ;
 int GX_QUADS ;
 int GX_REPEAT ;
 int GX_TEXMAP0 ;
 int GX_TF_RGBA8 ;
 int GX_TexCoord2f32 (double,double) ;
 int GX_VTXFMT0 ;
 TYPE_2__* vmode ;

void gxDrawTextureRepeat(gx_texture *texture, s32 x, s32 y, s32 w, s32 h, u8 alpha)
{
  if (!texture) return;
  if (texture->data)
  {

    GXTexObj texObj;
    GX_InitTexObj(&texObj, texture->data, texture->width, texture->height, GX_TF_RGBA8, GX_REPEAT, GX_REPEAT, GX_FALSE);
    GX_LoadTexObj(&texObj, GX_TEXMAP0);
    GX_InvalidateTexAll();


    x -= (vmode->fbWidth/2);
    y -= (vmode->efbHeight/2);


    f32 s = (f32)w / (f32)texture->width;
    f32 t = (f32)h / (f32)texture->height;


    GX_Begin(GX_QUADS, GX_VTXFMT0, 4);
    GX_Position2s16(x,y+h);
    GX_Color4u8(0xff,0xff,0xff,alpha);
    GX_TexCoord2f32(0.0, t);
    GX_Position2s16(x+w,y+h);
    GX_Color4u8(0xff,0xff,0xff,alpha);
    GX_TexCoord2f32(s, t);
    GX_Position2s16(x+w,y);
    GX_Color4u8(0xff,0xff,0xff,alpha);
    GX_TexCoord2f32(s, 0.0);
    GX_Position2s16(x,y);
    GX_Color4u8(0xff,0xff,0xff,alpha);
    GX_TexCoord2f32(0.0, 0.0);
    GX_End();
    GX_DrawDone();
  }
}
