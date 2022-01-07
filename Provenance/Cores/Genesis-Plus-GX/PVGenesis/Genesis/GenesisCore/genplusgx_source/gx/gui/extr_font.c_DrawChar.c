
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_5__ {int cell_width; int cell_height; } ;
struct TYPE_4__ {int b; int g; int r; } ;
typedef int GXTexObj ;
typedef TYPE_1__ GXColor ;


 int DCFlushRange (int ,int) ;
 int GX_Begin (int ,int ,int) ;
 int GX_CLAMP ;
 int GX_Color4u8 (int ,int ,int ,int) ;
 int GX_DrawDone () ;
 int GX_End () ;
 int GX_FALSE ;
 int GX_InitTexObj (int *,int ,int,int,int ,int ,int ,int ) ;
 int GX_InvalidateTexAll () ;
 int GX_LoadTexObj (int *,int ) ;
 int GX_Position2s16 (int,int) ;
 int GX_QUADS ;
 int GX_TEXMAP0 ;
 int GX_TF_I4 ;
 int GX_TexCoord2f32 (double,double) ;
 int GX_VTXFMT0 ;
 int GetFontTexel (unsigned char,int ,int ,int) ;
 TYPE_2__* fontHeader ;
 int fontTexture ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void DrawChar(unsigned char c, int xpos, int ypos, int size, GXColor color)
{

  GXTexObj texobj;
  GX_InitTexObj(&texobj, fontTexture, fontHeader->cell_width, fontHeader->cell_height, GX_TF_I4, GX_CLAMP, GX_CLAMP, GX_FALSE);
  GX_LoadTexObj(&texobj, GX_TEXMAP0);


  memset(fontTexture,0,fontHeader->cell_width * fontHeader->cell_height / 2);
  GetFontTexel(c,fontTexture,0,fontHeader->cell_width/2);
  DCFlushRange(fontTexture, fontHeader->cell_width * fontHeader->cell_height / 2);
  GX_InvalidateTexAll();


  s32 width = (fontHeader->cell_width * size) / fontHeader->cell_height;


  GX_Begin(GX_QUADS, GX_VTXFMT0, 4);
  GX_Position2s16(xpos, ypos - size);
  GX_Color4u8(color.r, color.g, color.b, 0xff);
  GX_TexCoord2f32(0.0, 0.0);
  GX_Position2s16(xpos + width, ypos - size);
  GX_Color4u8(color.r, color.g, color.b, 0xff);
  GX_TexCoord2f32(1.0, 0.0);
  GX_Position2s16(xpos + width, ypos);
  GX_Color4u8(color.r, color.g, color.b, 0xff);
  GX_TexCoord2f32(1.0, 1.0);
  GX_Position2s16(xpos, ypos);
  GX_Color4u8(color.r, color.g, color.b, 0xff);
  GX_TexCoord2f32(0.0, 1.0);
  GX_End();
  GX_DrawDone();
}
