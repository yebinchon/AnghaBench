
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int s16 ;


 int GX_BL_INVSRCALPHA ;
 int GX_BL_SRCALPHA ;
 int GX_BM_BLEND ;
 int GX_BM_NONE ;
 int GX_CLR_RGBA ;
 int GX_COLOR0A0 ;
 int GX_COLORNULL ;
 int GX_ClearVtxDesc () ;
 int GX_DIRECT ;
 int GX_F32 ;
 int GX_Flush () ;
 int GX_INDEX8 ;
 int GX_LO_CLEAR ;
 int GX_MODULATE ;
 int GX_POS_XY ;
 int GX_POS_XYZ ;
 int GX_REPLACE ;
 int GX_RGBA8 ;
 int GX_S16 ;
 int GX_SetArray (int ,int ,int) ;
 int GX_SetBlendMode (int ,int ,int ,int ) ;
 int GX_SetNumChans (int) ;
 int GX_SetNumTexGens (int) ;
 int GX_SetTevOp (int ,int ) ;
 int GX_SetTevOrder (int ,int ,int ,int ) ;
 int GX_SetVtxAttrFmt (int ,int ,int ,int ,int ) ;
 int GX_SetVtxDesc (int ,int ) ;
 int GX_TEVSTAGE0 ;
 int GX_TEXCOORD0 ;
 int GX_TEXMAP0 ;
 int GX_TEX_ST ;
 int GX_VA_CLR0 ;
 int GX_VA_POS ;
 int GX_VA_TEX0 ;
 int GX_VTXFMT0 ;
 int square ;

__attribute__((used)) static void gxResetRendering(u8 type)
{
  GX_ClearVtxDesc();

  if (type)
  {

    GX_SetBlendMode(GX_BM_BLEND,GX_BL_SRCALPHA,GX_BL_INVSRCALPHA,GX_LO_CLEAR);
    GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XY, GX_S16, 0);
    GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
    GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);
    GX_SetVtxDesc(GX_VA_POS, GX_DIRECT);
    GX_SetVtxDesc(GX_VA_TEX0, GX_DIRECT);
    GX_SetVtxDesc (GX_VA_CLR0, GX_DIRECT);




    GX_SetTevOp (GX_TEVSTAGE0, GX_MODULATE);
    GX_SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GX_SetNumTexGens(1);
    GX_SetNumChans(1);
  }
  else
  {

    GX_SetBlendMode(GX_BM_NONE,GX_BL_SRCALPHA,GX_BL_INVSRCALPHA,GX_LO_CLEAR);
    GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_S16, 0);
    GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);
    GX_SetVtxDesc(GX_VA_POS, GX_INDEX8);
    GX_SetVtxDesc(GX_VA_TEX0, GX_DIRECT);
    GX_SetArray(GX_VA_POS, square, 3 * sizeof (s16));




    GX_SetTevOp (GX_TEVSTAGE0, GX_REPLACE);
    GX_SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLORNULL);
    GX_SetNumTexGens(1);
    GX_SetNumChans(0);
  }

  GX_Flush();
}
