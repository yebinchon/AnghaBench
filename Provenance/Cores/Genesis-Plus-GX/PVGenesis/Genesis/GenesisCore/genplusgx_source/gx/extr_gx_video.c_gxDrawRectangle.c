
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ s32 ;
struct TYPE_5__ {int fbWidth; int efbHeight; } ;
struct TYPE_4__ {int b; int g; int r; } ;
typedef TYPE_1__ GXColor ;


 int GX_Begin (int ,int ,int) ;
 int GX_Color4u8 (int ,int ,int ,int ) ;
 int GX_DIRECT ;
 int GX_DrawDone () ;
 int GX_End () ;
 int GX_Flush () ;
 int GX_MODULATE ;
 int GX_NONE ;
 int GX_PASSCLR ;
 int GX_Position2s16 (scalar_t__,scalar_t__) ;
 int GX_QUADS ;
 int GX_SetTevOp (int ,int ) ;
 int GX_SetVtxDesc (int ,int ) ;
 int GX_TEVSTAGE0 ;
 int GX_VA_TEX0 ;
 int GX_VTXFMT0 ;
 TYPE_2__* vmode ;

void gxDrawRectangle(s32 x, s32 y, s32 w, s32 h, u8 alpha, GXColor color)
{

  GX_SetTevOp (GX_TEVSTAGE0, GX_PASSCLR);
  GX_SetVtxDesc (GX_VA_TEX0, GX_NONE);
  GX_Flush();


  x -= (vmode->fbWidth/2);
  y -= (vmode->efbHeight/2);


  GX_Begin(GX_QUADS, GX_VTXFMT0, 4);
  GX_Position2s16(x,y+h);
  GX_Color4u8(color.r,color.g,color.b,alpha);
  GX_Position2s16(x+w,y+h);
  GX_Color4u8(color.r,color.g,color.b,alpha);
  GX_Position2s16(x+w,y);
  GX_Color4u8(color.r,color.g,color.b,alpha);
  GX_Position2s16(x,y);
  GX_Color4u8(color.r,color.g,color.b,alpha);
  GX_End();
  GX_DrawDone();


  GX_SetVtxDesc(GX_VA_TEX0, GX_DIRECT);
  GX_SetTevOp (GX_TEVSTAGE0, GX_MODULATE);
  GX_Flush();
}
