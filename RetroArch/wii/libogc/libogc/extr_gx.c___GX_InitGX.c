
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ s32 ;
struct TYPE_14__ {int viHeight; int xfbHeight; int efbHeight; int fbWidth; int field_rendering; } ;
struct TYPE_12__ {int member_2; int member_3; int member_1; int member_0; } ;
struct TYPE_11__ {int member_1; int member_3; int member_2; int member_0; } ;
struct TYPE_10__ {int member_0; int member_3; int member_2; int member_1; } ;
struct TYPE_13__ {TYPE_3__ member_2; TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef TYPE_4__ Mtx ;
typedef TYPE_5__ GXRModeObj ;
typedef int GXColor ;


 scalar_t__ BLACK ;
 int GX_AF_NONE ;
 int GX_ALWAYS ;
 int GX_AOP_AND ;
 int GX_BL_INVSRCALPHA ;
 int GX_BL_ONE ;
 int GX_BL_SRCALPHA ;
 int GX_BL_ZERO ;
 int GX_BM_NONE ;
 int GX_CH_ALPHA ;
 int GX_CH_BLUE ;
 int GX_CH_GREEN ;
 int GX_CH_RED ;
 int GX_CLAMP_BOTTOM ;
 int GX_CLAMP_TOP ;
 int GX_CLIP_ENABLE ;
 int GX_COLOR0A0 ;
 int GX_COLOR1A1 ;
 int GX_COLORNULL ;
 int GX_COPY_PROGRESSIVE ;
 int GX_CULL_BACK ;
 int GX_ClearBoundingBox () ;
 int GX_ClearGPMetric () ;
 int GX_ClearVtxDesc () ;
 scalar_t__ GX_DEFAULT_BG ;
 int GX_DF_NONE ;
 int GX_DISABLE ;
 int GX_DTTIDENTITY ;
 int GX_ENABLE ;
 int GX_EnableTexOffsets (int ,int ,int ) ;
 int GX_FALSE ;
 int GX_FOG_NONE ;
 int GX_GM_1_0 ;
 int GX_IDENTITY ;
 int GX_INDTEXSTAGE0 ;
 int GX_INDTEXSTAGE1 ;
 int GX_INDTEXSTAGE2 ;
 int GX_INDTEXSTAGE3 ;
 int GX_ITS_1 ;
 int GX_InvVtxCache () ;
 int GX_InvalidateTexAll () ;
 int GX_LEQUAL ;
 int GX_LIGHTNULL ;
 int GX_LO_CLEAR ;
 int GX_LO_SET ;
 int GX_LoadNrmMtxImm (TYPE_4__,int ) ;
 int GX_LoadPosMtxImm (TYPE_4__,int ) ;
 int GX_LoadTexMtxImm (TYPE_4__,int ,int ) ;
 scalar_t__ GX_MAX_TEVSTAGE ;
 int GX_MTX3x4 ;
 int GX_PERF0_NONE ;
 int GX_PERF1_NONE ;
 int GX_PF_RGB8_Z24 ;
 int GX_PNMTX0 ;
 int GX_PokeAlphaMode (int ,int ) ;
 int GX_PokeAlphaRead (int ) ;
 int GX_PokeAlphaUpdate (int ) ;
 int GX_PokeBlendMode (int ,int ,int ,int ) ;
 int GX_PokeColorUpdate (int ) ;
 int GX_PokeDither (int ) ;
 int GX_PokeDstAlpha (int ,int ) ;
 int GX_PokeZMode (int ,int ,int ) ;
 int GX_READ_FF ;
 int GX_REPLACE ;
 int GX_SRC_REG ;
 int GX_SRC_VTX ;
 int GX_SetAlphaCompare (int ,int ,int ,int ,int ) ;
 int GX_SetAlphaUpdate (int ) ;
 int GX_SetBlendMode (int ,int ,int ,int ) ;
 int GX_SetChanAmbColor (int ,int ) ;
 int GX_SetChanCtrl (int ,int ,int ,int ,int ,int ,int ) ;
 int GX_SetChanMatColor (int ,int ) ;
 int GX_SetClipMode (int ) ;
 int GX_SetCoPlanar (int ) ;
 int GX_SetColorUpdate (int ) ;
 int GX_SetCopyClamp (int) ;
 int GX_SetCopyClear (int ,int) ;
 int GX_SetCopyFilter (int ,int *,int ,int *) ;
 int GX_SetCullMode (int ) ;
 int GX_SetCurrentMtx (int ) ;
 int GX_SetDispCopyDst (int ,int ) ;
 int GX_SetDispCopyFrame2Field (int ) ;
 int GX_SetDispCopyGamma (int ) ;
 int GX_SetDispCopySrc (int ,int ,int ,int ) ;
 int GX_SetDispCopyYScale (double) ;
 int GX_SetDither (int ) ;
 int GX_SetDstAlpha (int ,int ) ;
 int GX_SetFieldMask (int ,int ) ;
 int GX_SetFieldMode (int ,int) ;
 int GX_SetFog (int ,int ,int,double,int,int ) ;
 int GX_SetFogRangeAdj (int ,int ,int *) ;
 int GX_SetGPMetric (int ,int ) ;
 int GX_SetIndTexCoordScale (int ,int ,int ) ;
 int GX_SetLineWidth (int,int ) ;
 int GX_SetNumChans (int ) ;
 int GX_SetNumIndStages (int ) ;
 int GX_SetNumTevStages (int) ;
 int GX_SetNumTexGens (int) ;
 int GX_SetPixelFmt (int ,int ) ;
 int GX_SetPointSize (int,int ) ;
 int GX_SetScissor (int ,int ,int ,int ) ;
 int GX_SetScissorBoxOffset (int ,int ) ;
 int GX_SetTevDirect (scalar_t__) ;
 int GX_SetTevKAlphaSel (scalar_t__,int ) ;
 int GX_SetTevKColorSel (scalar_t__,int ) ;
 int GX_SetTevOp (int ,int ) ;
 int GX_SetTevOrder (int ,int ,int ,int ) ;
 int GX_SetTevSwapMode (scalar_t__,int ,int ) ;
 int GX_SetTevSwapModeTable (int ,int ,int ,int ,int ) ;
 int GX_SetTexCoordGen (int ,int ,int ,int ) ;
 int GX_SetTexRegionCallback (int ) ;
 int GX_SetTlutRegionCallback (int ) ;
 int GX_SetViewport (int ,int ,int ,int ,int ,int) ;
 int GX_SetZCompLoc (int ) ;
 int GX_SetZMode (int ,int ,int ) ;
 int GX_SetZTexture (int ,int ,int ) ;
 int GX_TEVSTAGE0 ;
 int GX_TEVSTAGE1 ;
 int GX_TEVSTAGE10 ;
 int GX_TEVSTAGE11 ;
 int GX_TEVSTAGE12 ;
 int GX_TEVSTAGE13 ;
 int GX_TEVSTAGE14 ;
 int GX_TEVSTAGE15 ;
 int GX_TEVSTAGE2 ;
 int GX_TEVSTAGE3 ;
 int GX_TEVSTAGE4 ;
 int GX_TEVSTAGE5 ;
 int GX_TEVSTAGE6 ;
 int GX_TEVSTAGE7 ;
 int GX_TEVSTAGE8 ;
 int GX_TEVSTAGE9 ;
 int GX_TEV_KASEL_1 ;
 int GX_TEV_KCSEL_1_4 ;
 int GX_TEV_SWAP0 ;
 int GX_TEV_SWAP1 ;
 int GX_TEV_SWAP2 ;
 int GX_TEV_SWAP3 ;
 int GX_TEXCOORD0 ;
 int GX_TEXCOORD1 ;
 int GX_TEXCOORD2 ;
 int GX_TEXCOORD3 ;
 int GX_TEXCOORD4 ;
 int GX_TEXCOORD5 ;
 int GX_TEXCOORD6 ;
 int GX_TEXCOORD7 ;
 int GX_TEXCOORDNULL ;
 int GX_TEXMAP0 ;
 int GX_TEXMAP1 ;
 int GX_TEXMAP2 ;
 int GX_TEXMAP3 ;
 int GX_TEXMAP4 ;
 int GX_TEXMAP5 ;
 int GX_TEXMAP6 ;
 int GX_TEXMAP7 ;
 int GX_TEXMAP_NULL ;
 int GX_TF_Z8 ;
 int GX_TG_MTX2x4 ;
 int GX_TG_TEX0 ;
 int GX_TG_TEX1 ;
 int GX_TG_TEX2 ;
 int GX_TG_TEX3 ;
 int GX_TG_TEX4 ;
 int GX_TG_TEX5 ;
 int GX_TG_TEX6 ;
 int GX_TG_TEX7 ;
 int GX_TO_ZERO ;
 int GX_TRUE ;
 int GX_ZC_LINEAR ;
 int GX_ZT_DISABLE ;
 TYPE_5__* VIDEO_GetPreferredMode (int *) ;
 scalar_t__ WHITE ;
 int __GXDefTexRegionCallback ;
 int __GXDefTlutRegionCallback ;

__attribute__((used)) static void __GX_InitGX()
{
 s32 i;
 u32 flag;
 GXRModeObj *rmode;
 Mtx identity_matrix =
 {
  {1,0,0,0},
  {0,1,0,0},
  {0,0,1,0}
 };

 rmode = VIDEO_GetPreferredMode(((void*)0));

 GX_SetCopyClear((GXColor)BLACK,0xffffff);
 GX_SetTexCoordGen(GX_TEXCOORD0,GX_TG_MTX2x4,GX_TG_TEX0,GX_IDENTITY);
 GX_SetTexCoordGen(GX_TEXCOORD1,GX_TG_MTX2x4,GX_TG_TEX1,GX_IDENTITY);
 GX_SetTexCoordGen(GX_TEXCOORD2,GX_TG_MTX2x4,GX_TG_TEX2,GX_IDENTITY);
 GX_SetTexCoordGen(GX_TEXCOORD3,GX_TG_MTX2x4,GX_TG_TEX3,GX_IDENTITY);
 GX_SetTexCoordGen(GX_TEXCOORD4,GX_TG_MTX2x4,GX_TG_TEX4,GX_IDENTITY);
 GX_SetTexCoordGen(GX_TEXCOORD5,GX_TG_MTX2x4,GX_TG_TEX5,GX_IDENTITY);
 GX_SetTexCoordGen(GX_TEXCOORD6,GX_TG_MTX2x4,GX_TG_TEX6,GX_IDENTITY);
 GX_SetTexCoordGen(GX_TEXCOORD7,GX_TG_MTX2x4,GX_TG_TEX7,GX_IDENTITY);
 GX_SetNumTexGens(1);
 GX_ClearVtxDesc();
 GX_InvVtxCache();

 GX_SetLineWidth(6,GX_TO_ZERO);
 GX_SetPointSize(6,GX_TO_ZERO);

 GX_EnableTexOffsets(GX_TEXCOORD0,GX_DISABLE,GX_DISABLE);
 GX_EnableTexOffsets(GX_TEXCOORD1,GX_DISABLE,GX_DISABLE);
 GX_EnableTexOffsets(GX_TEXCOORD2,GX_DISABLE,GX_DISABLE);
 GX_EnableTexOffsets(GX_TEXCOORD3,GX_DISABLE,GX_DISABLE);
 GX_EnableTexOffsets(GX_TEXCOORD4,GX_DISABLE,GX_DISABLE);
 GX_EnableTexOffsets(GX_TEXCOORD5,GX_DISABLE,GX_DISABLE);
 GX_EnableTexOffsets(GX_TEXCOORD6,GX_DISABLE,GX_DISABLE);
 GX_EnableTexOffsets(GX_TEXCOORD7,GX_DISABLE,GX_DISABLE);

 GX_LoadPosMtxImm(identity_matrix,GX_PNMTX0);
 GX_LoadNrmMtxImm(identity_matrix,GX_PNMTX0);
 GX_SetCurrentMtx(GX_PNMTX0);
 GX_LoadTexMtxImm(identity_matrix,GX_IDENTITY,GX_MTX3x4);
 GX_LoadTexMtxImm(identity_matrix,GX_DTTIDENTITY,GX_MTX3x4);

 GX_SetViewport(0,0,rmode->fbWidth,rmode->efbHeight,0,1);
 GX_SetCoPlanar(GX_DISABLE);
 GX_SetCullMode(GX_CULL_BACK);
 GX_SetClipMode(GX_CLIP_ENABLE);

 GX_SetScissor(0,0,rmode->fbWidth,rmode->efbHeight);
 GX_SetScissorBoxOffset(0,0);

 GX_SetNumChans(0);

 GX_SetChanCtrl(GX_COLOR0A0,GX_DISABLE,GX_SRC_REG,GX_SRC_VTX,GX_LIGHTNULL,GX_DF_NONE,GX_AF_NONE);
 GX_SetChanAmbColor(GX_COLOR0A0,(GXColor)BLACK);
 GX_SetChanMatColor(GX_COLOR0A0,(GXColor)WHITE);

 GX_SetChanCtrl(GX_COLOR1A1,GX_DISABLE,GX_SRC_REG,GX_SRC_VTX,GX_LIGHTNULL,GX_DF_NONE,GX_AF_NONE);
 GX_SetChanAmbColor(GX_COLOR1A1,(GXColor)BLACK);
 GX_SetChanMatColor(GX_COLOR1A1,(GXColor)WHITE);

 GX_InvalidateTexAll();
 GX_SetTexRegionCallback(__GXDefTexRegionCallback);
 GX_SetTlutRegionCallback(__GXDefTlutRegionCallback);

 GX_SetTevOrder(GX_TEVSTAGE0,GX_TEXCOORD0,GX_TEXMAP0,GX_COLOR0A0);
 GX_SetTevOrder(GX_TEVSTAGE1,GX_TEXCOORD1,GX_TEXMAP1,GX_COLOR0A0);
 GX_SetTevOrder(GX_TEVSTAGE2,GX_TEXCOORD2,GX_TEXMAP2,GX_COLOR0A0);
 GX_SetTevOrder(GX_TEVSTAGE3,GX_TEXCOORD3,GX_TEXMAP3,GX_COLOR0A0);
 GX_SetTevOrder(GX_TEVSTAGE4,GX_TEXCOORD4,GX_TEXMAP4,GX_COLOR0A0);
 GX_SetTevOrder(GX_TEVSTAGE5,GX_TEXCOORD5,GX_TEXMAP5,GX_COLOR0A0);
 GX_SetTevOrder(GX_TEVSTAGE6,GX_TEXCOORD6,GX_TEXMAP6,GX_COLOR0A0);
 GX_SetTevOrder(GX_TEVSTAGE7,GX_TEXCOORD7,GX_TEXMAP7,GX_COLOR0A0);
 GX_SetTevOrder(GX_TEVSTAGE8,GX_TEXCOORDNULL,GX_TEXMAP_NULL,GX_COLORNULL);
 GX_SetTevOrder(GX_TEVSTAGE9,GX_TEXCOORDNULL,GX_TEXMAP_NULL,GX_COLORNULL);
 GX_SetTevOrder(GX_TEVSTAGE10,GX_TEXCOORDNULL,GX_TEXMAP_NULL,GX_COLORNULL);
 GX_SetTevOrder(GX_TEVSTAGE11,GX_TEXCOORDNULL,GX_TEXMAP_NULL,GX_COLORNULL);
 GX_SetTevOrder(GX_TEVSTAGE12,GX_TEXCOORDNULL,GX_TEXMAP_NULL,GX_COLORNULL);
 GX_SetTevOrder(GX_TEVSTAGE13,GX_TEXCOORDNULL,GX_TEXMAP_NULL,GX_COLORNULL);
 GX_SetTevOrder(GX_TEVSTAGE14,GX_TEXCOORDNULL,GX_TEXMAP_NULL,GX_COLORNULL);
 GX_SetTevOrder(GX_TEVSTAGE15,GX_TEXCOORDNULL,GX_TEXMAP_NULL,GX_COLORNULL);
 GX_SetNumTevStages(1);
 GX_SetTevOp(GX_TEVSTAGE0,GX_REPLACE);
 GX_SetAlphaCompare(GX_ALWAYS,0,GX_AOP_AND,GX_ALWAYS,0);
 GX_SetZTexture(GX_ZT_DISABLE,GX_TF_Z8,0);
 for(i=0;i<GX_MAX_TEVSTAGE;i++) {
  GX_SetTevKColorSel(i,GX_TEV_KCSEL_1_4);
  GX_SetTevKAlphaSel(i,GX_TEV_KASEL_1);
  GX_SetTevSwapMode(i,GX_TEV_SWAP0,GX_TEV_SWAP0);
 }

 GX_SetTevSwapModeTable(GX_TEV_SWAP0,GX_CH_RED,GX_CH_GREEN,GX_CH_BLUE,GX_CH_ALPHA);
 GX_SetTevSwapModeTable(GX_TEV_SWAP1,GX_CH_RED,GX_CH_RED,GX_CH_RED,GX_CH_ALPHA);
 GX_SetTevSwapModeTable(GX_TEV_SWAP2,GX_CH_GREEN,GX_CH_GREEN,GX_CH_GREEN,GX_CH_ALPHA);
 GX_SetTevSwapModeTable(GX_TEV_SWAP3,GX_CH_BLUE,GX_CH_BLUE,GX_CH_BLUE,GX_CH_ALPHA);
 for(i=0;i<GX_MAX_TEVSTAGE;i++) {
  GX_SetTevDirect(i);
 }

 GX_SetNumIndStages(0);
 GX_SetIndTexCoordScale(GX_INDTEXSTAGE0,GX_ITS_1,GX_ITS_1);
 GX_SetIndTexCoordScale(GX_INDTEXSTAGE1,GX_ITS_1,GX_ITS_1);
 GX_SetIndTexCoordScale(GX_INDTEXSTAGE2,GX_ITS_1,GX_ITS_1);
 GX_SetIndTexCoordScale(GX_INDTEXSTAGE3,GX_ITS_1,GX_ITS_1);

 GX_SetFog(GX_FOG_NONE,0,1,0.1,1,(GXColor)BLACK);
 GX_SetFogRangeAdj(GX_DISABLE,0,((void*)0));

 GX_SetBlendMode(GX_BM_NONE,GX_BL_SRCALPHA,GX_BL_INVSRCALPHA,GX_LO_CLEAR);
 GX_SetColorUpdate(GX_ENABLE);
 GX_SetAlphaUpdate(GX_ENABLE);
 GX_SetZMode(GX_ENABLE,GX_LEQUAL,GX_TRUE);
 GX_SetZCompLoc(GX_TRUE);
 GX_SetDither(GX_ENABLE);
 GX_SetDstAlpha(GX_DISABLE,0);
 GX_SetPixelFmt(GX_PF_RGB8_Z24,GX_ZC_LINEAR);

 GX_SetFieldMask(GX_ENABLE,GX_ENABLE);

 flag = 0;
 if(rmode->viHeight==(rmode->xfbHeight<<1)) flag = 1;
 GX_SetFieldMode(rmode->field_rendering,flag);

 GX_SetCopyClear((GXColor)GX_DEFAULT_BG,0x00ffffff);
 GX_SetDispCopySrc(0,0,rmode->fbWidth,rmode->efbHeight);
 GX_SetDispCopyDst(rmode->fbWidth,rmode->efbHeight);
 GX_SetDispCopyYScale(1.0);
 GX_SetCopyClamp(GX_CLAMP_TOP|GX_CLAMP_BOTTOM);
 GX_SetCopyFilter(GX_FALSE,((void*)0),GX_FALSE,((void*)0));
 GX_SetDispCopyGamma(GX_GM_1_0);
 GX_SetDispCopyFrame2Field(GX_COPY_PROGRESSIVE);
 GX_ClearBoundingBox();

 GX_PokeColorUpdate(GX_TRUE);
 GX_PokeAlphaUpdate(GX_TRUE);
 GX_PokeDither(GX_FALSE);
 GX_PokeBlendMode(GX_BM_NONE,GX_BL_ZERO,GX_BL_ONE,GX_LO_SET);
 GX_PokeAlphaMode(GX_ALWAYS,0);
 GX_PokeAlphaRead(GX_READ_FF);
 GX_PokeDstAlpha(GX_DISABLE,0);
 GX_PokeZMode(GX_TRUE,GX_ALWAYS,GX_TRUE);

 GX_SetGPMetric(GX_PERF0_NONE,GX_PERF1_NONE);
 GX_ClearGPMetric();
}
