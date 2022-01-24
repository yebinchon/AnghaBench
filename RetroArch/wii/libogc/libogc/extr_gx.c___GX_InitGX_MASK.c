#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ s32 ;
struct TYPE_14__ {int viHeight; int xfbHeight; int /*<<< orphan*/  efbHeight; int /*<<< orphan*/  fbWidth; int /*<<< orphan*/  field_rendering; } ;
struct TYPE_12__ {int member_2; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {int member_1; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_0; } ;
struct TYPE_10__ {int member_0; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_13__ {TYPE_3__ member_2; TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef  TYPE_4__ Mtx ;
typedef  TYPE_5__ GXRModeObj ;
typedef  int /*<<< orphan*/  GXColor ;

/* Variables and functions */
 scalar_t__ BLACK ; 
 int /*<<< orphan*/  GX_AF_NONE ; 
 int /*<<< orphan*/  GX_ALWAYS ; 
 int /*<<< orphan*/  GX_AOP_AND ; 
 int /*<<< orphan*/  GX_BL_INVSRCALPHA ; 
 int /*<<< orphan*/  GX_BL_ONE ; 
 int /*<<< orphan*/  GX_BL_SRCALPHA ; 
 int /*<<< orphan*/  GX_BL_ZERO ; 
 int /*<<< orphan*/  GX_BM_NONE ; 
 int /*<<< orphan*/  GX_CH_ALPHA ; 
 int /*<<< orphan*/  GX_CH_BLUE ; 
 int /*<<< orphan*/  GX_CH_GREEN ; 
 int /*<<< orphan*/  GX_CH_RED ; 
 int GX_CLAMP_BOTTOM ; 
 int GX_CLAMP_TOP ; 
 int /*<<< orphan*/  GX_CLIP_ENABLE ; 
 int /*<<< orphan*/  GX_COLOR0A0 ; 
 int /*<<< orphan*/  GX_COLOR1A1 ; 
 int /*<<< orphan*/  GX_COLORNULL ; 
 int /*<<< orphan*/  GX_COPY_PROGRESSIVE ; 
 int /*<<< orphan*/  GX_CULL_BACK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ GX_DEFAULT_BG ; 
 int /*<<< orphan*/  GX_DF_NONE ; 
 int /*<<< orphan*/  GX_DISABLE ; 
 int /*<<< orphan*/  GX_DTTIDENTITY ; 
 int /*<<< orphan*/  GX_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_FALSE ; 
 int /*<<< orphan*/  GX_FOG_NONE ; 
 int /*<<< orphan*/  GX_GM_1_0 ; 
 int /*<<< orphan*/  GX_IDENTITY ; 
 int /*<<< orphan*/  GX_INDTEXSTAGE0 ; 
 int /*<<< orphan*/  GX_INDTEXSTAGE1 ; 
 int /*<<< orphan*/  GX_INDTEXSTAGE2 ; 
 int /*<<< orphan*/  GX_INDTEXSTAGE3 ; 
 int /*<<< orphan*/  GX_ITS_1 ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  GX_LEQUAL ; 
 int /*<<< orphan*/  GX_LIGHTNULL ; 
 int /*<<< orphan*/  GX_LO_CLEAR ; 
 int /*<<< orphan*/  GX_LO_SET ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ GX_MAX_TEVSTAGE ; 
 int /*<<< orphan*/  GX_MTX3x4 ; 
 int /*<<< orphan*/  GX_PERF0_NONE ; 
 int /*<<< orphan*/  GX_PERF1_NONE ; 
 int /*<<< orphan*/  GX_PF_RGB8_Z24 ; 
 int /*<<< orphan*/  GX_PNMTX0 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_READ_FF ; 
 int /*<<< orphan*/  GX_REPLACE ; 
 int /*<<< orphan*/  GX_SRC_REG ; 
 int /*<<< orphan*/  GX_SRC_VTX ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (double) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,double,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (int) ; 
 int /*<<< orphan*/  FUNC48 (int) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC53 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC54 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC55 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC56 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC57 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC58 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC59 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC60 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC61 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC62 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC63 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC64 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC65 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC66 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_TEVSTAGE0 ; 
 int /*<<< orphan*/  GX_TEVSTAGE1 ; 
 int /*<<< orphan*/  GX_TEVSTAGE10 ; 
 int /*<<< orphan*/  GX_TEVSTAGE11 ; 
 int /*<<< orphan*/  GX_TEVSTAGE12 ; 
 int /*<<< orphan*/  GX_TEVSTAGE13 ; 
 int /*<<< orphan*/  GX_TEVSTAGE14 ; 
 int /*<<< orphan*/  GX_TEVSTAGE15 ; 
 int /*<<< orphan*/  GX_TEVSTAGE2 ; 
 int /*<<< orphan*/  GX_TEVSTAGE3 ; 
 int /*<<< orphan*/  GX_TEVSTAGE4 ; 
 int /*<<< orphan*/  GX_TEVSTAGE5 ; 
 int /*<<< orphan*/  GX_TEVSTAGE6 ; 
 int /*<<< orphan*/  GX_TEVSTAGE7 ; 
 int /*<<< orphan*/  GX_TEVSTAGE8 ; 
 int /*<<< orphan*/  GX_TEVSTAGE9 ; 
 int /*<<< orphan*/  GX_TEV_KASEL_1 ; 
 int /*<<< orphan*/  GX_TEV_KCSEL_1_4 ; 
 int /*<<< orphan*/  GX_TEV_SWAP0 ; 
 int /*<<< orphan*/  GX_TEV_SWAP1 ; 
 int /*<<< orphan*/  GX_TEV_SWAP2 ; 
 int /*<<< orphan*/  GX_TEV_SWAP3 ; 
 int /*<<< orphan*/  GX_TEXCOORD0 ; 
 int /*<<< orphan*/  GX_TEXCOORD1 ; 
 int /*<<< orphan*/  GX_TEXCOORD2 ; 
 int /*<<< orphan*/  GX_TEXCOORD3 ; 
 int /*<<< orphan*/  GX_TEXCOORD4 ; 
 int /*<<< orphan*/  GX_TEXCOORD5 ; 
 int /*<<< orphan*/  GX_TEXCOORD6 ; 
 int /*<<< orphan*/  GX_TEXCOORD7 ; 
 int /*<<< orphan*/  GX_TEXCOORDNULL ; 
 int /*<<< orphan*/  GX_TEXMAP0 ; 
 int /*<<< orphan*/  GX_TEXMAP1 ; 
 int /*<<< orphan*/  GX_TEXMAP2 ; 
 int /*<<< orphan*/  GX_TEXMAP3 ; 
 int /*<<< orphan*/  GX_TEXMAP4 ; 
 int /*<<< orphan*/  GX_TEXMAP5 ; 
 int /*<<< orphan*/  GX_TEXMAP6 ; 
 int /*<<< orphan*/  GX_TEXMAP7 ; 
 int /*<<< orphan*/  GX_TEXMAP_NULL ; 
 int /*<<< orphan*/  GX_TF_Z8 ; 
 int /*<<< orphan*/  GX_TG_MTX2x4 ; 
 int /*<<< orphan*/  GX_TG_TEX0 ; 
 int /*<<< orphan*/  GX_TG_TEX1 ; 
 int /*<<< orphan*/  GX_TG_TEX2 ; 
 int /*<<< orphan*/  GX_TG_TEX3 ; 
 int /*<<< orphan*/  GX_TG_TEX4 ; 
 int /*<<< orphan*/  GX_TG_TEX5 ; 
 int /*<<< orphan*/  GX_TG_TEX6 ; 
 int /*<<< orphan*/  GX_TG_TEX7 ; 
 int /*<<< orphan*/  GX_TO_ZERO ; 
 int /*<<< orphan*/  GX_TRUE ; 
 int /*<<< orphan*/  GX_ZC_LINEAR ; 
 int /*<<< orphan*/  GX_ZT_DISABLE ; 
 TYPE_5__* FUNC67 (int /*<<< orphan*/ *) ; 
 scalar_t__ WHITE ; 
 int /*<<< orphan*/  __GXDefTexRegionCallback ; 
 int /*<<< orphan*/  __GXDefTlutRegionCallback ; 

__attribute__((used)) static void FUNC68()
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

	rmode = FUNC67(NULL);

	FUNC27((GXColor)BLACK,0xffffff);
	FUNC60(GX_TEXCOORD0,GX_TG_MTX2x4,GX_TG_TEX0,GX_IDENTITY);
	FUNC60(GX_TEXCOORD1,GX_TG_MTX2x4,GX_TG_TEX1,GX_IDENTITY);
	FUNC60(GX_TEXCOORD2,GX_TG_MTX2x4,GX_TG_TEX2,GX_IDENTITY);
	FUNC60(GX_TEXCOORD3,GX_TG_MTX2x4,GX_TG_TEX3,GX_IDENTITY);
	FUNC60(GX_TEXCOORD4,GX_TG_MTX2x4,GX_TG_TEX4,GX_IDENTITY);
	FUNC60(GX_TEXCOORD5,GX_TG_MTX2x4,GX_TG_TEX5,GX_IDENTITY);
	FUNC60(GX_TEXCOORD6,GX_TG_MTX2x4,GX_TG_TEX6,GX_IDENTITY);
	FUNC60(GX_TEXCOORD7,GX_TG_MTX2x4,GX_TG_TEX7,GX_IDENTITY);
	FUNC48(1);
	FUNC2();
	FUNC4();

	FUNC44(6,GX_TO_ZERO);
	FUNC50(6,GX_TO_ZERO);

	FUNC3(GX_TEXCOORD0,GX_DISABLE,GX_DISABLE);
	FUNC3(GX_TEXCOORD1,GX_DISABLE,GX_DISABLE);
	FUNC3(GX_TEXCOORD2,GX_DISABLE,GX_DISABLE);
	FUNC3(GX_TEXCOORD3,GX_DISABLE,GX_DISABLE);
	FUNC3(GX_TEXCOORD4,GX_DISABLE,GX_DISABLE);
	FUNC3(GX_TEXCOORD5,GX_DISABLE,GX_DISABLE);
	FUNC3(GX_TEXCOORD6,GX_DISABLE,GX_DISABLE);
	FUNC3(GX_TEXCOORD7,GX_DISABLE,GX_DISABLE);

	FUNC7(identity_matrix,GX_PNMTX0);
	FUNC6(identity_matrix,GX_PNMTX0);
	FUNC30(GX_PNMTX0);
	FUNC8(identity_matrix,GX_IDENTITY,GX_MTX3x4);
	FUNC8(identity_matrix,GX_DTTIDENTITY,GX_MTX3x4);

	FUNC63(0,0,rmode->fbWidth,rmode->efbHeight,0,1);
	FUNC24(GX_DISABLE);
	FUNC29(GX_CULL_BACK);
	FUNC23(GX_CLIP_ENABLE);

	FUNC51(0,0,rmode->fbWidth,rmode->efbHeight);
	FUNC52(0,0);

	FUNC45(0);

	FUNC21(GX_COLOR0A0,GX_DISABLE,GX_SRC_REG,GX_SRC_VTX,GX_LIGHTNULL,GX_DF_NONE,GX_AF_NONE);
	FUNC20(GX_COLOR0A0,(GXColor)BLACK);
	FUNC22(GX_COLOR0A0,(GXColor)WHITE);

	FUNC21(GX_COLOR1A1,GX_DISABLE,GX_SRC_REG,GX_SRC_VTX,GX_LIGHTNULL,GX_DF_NONE,GX_AF_NONE);
	FUNC20(GX_COLOR1A1,(GXColor)BLACK);
	FUNC22(GX_COLOR1A1,(GXColor)WHITE);

	FUNC5();
	FUNC61(__GXDefTexRegionCallback);
	FUNC62(__GXDefTlutRegionCallback);

	FUNC57(GX_TEVSTAGE0,GX_TEXCOORD0,GX_TEXMAP0,GX_COLOR0A0);
	FUNC57(GX_TEVSTAGE1,GX_TEXCOORD1,GX_TEXMAP1,GX_COLOR0A0);
	FUNC57(GX_TEVSTAGE2,GX_TEXCOORD2,GX_TEXMAP2,GX_COLOR0A0);
	FUNC57(GX_TEVSTAGE3,GX_TEXCOORD3,GX_TEXMAP3,GX_COLOR0A0);
	FUNC57(GX_TEVSTAGE4,GX_TEXCOORD4,GX_TEXMAP4,GX_COLOR0A0);
	FUNC57(GX_TEVSTAGE5,GX_TEXCOORD5,GX_TEXMAP5,GX_COLOR0A0);
	FUNC57(GX_TEVSTAGE6,GX_TEXCOORD6,GX_TEXMAP6,GX_COLOR0A0);
	FUNC57(GX_TEVSTAGE7,GX_TEXCOORD7,GX_TEXMAP7,GX_COLOR0A0);
	FUNC57(GX_TEVSTAGE8,GX_TEXCOORDNULL,GX_TEXMAP_NULL,GX_COLORNULL);
	FUNC57(GX_TEVSTAGE9,GX_TEXCOORDNULL,GX_TEXMAP_NULL,GX_COLORNULL);
	FUNC57(GX_TEVSTAGE10,GX_TEXCOORDNULL,GX_TEXMAP_NULL,GX_COLORNULL);
	FUNC57(GX_TEVSTAGE11,GX_TEXCOORDNULL,GX_TEXMAP_NULL,GX_COLORNULL);
	FUNC57(GX_TEVSTAGE12,GX_TEXCOORDNULL,GX_TEXMAP_NULL,GX_COLORNULL);
	FUNC57(GX_TEVSTAGE13,GX_TEXCOORDNULL,GX_TEXMAP_NULL,GX_COLORNULL);
	FUNC57(GX_TEVSTAGE14,GX_TEXCOORDNULL,GX_TEXMAP_NULL,GX_COLORNULL);
	FUNC57(GX_TEVSTAGE15,GX_TEXCOORDNULL,GX_TEXMAP_NULL,GX_COLORNULL);
	FUNC47(1);
	FUNC56(GX_TEVSTAGE0,GX_REPLACE);
	FUNC17(GX_ALWAYS,0,GX_AOP_AND,GX_ALWAYS,0);
	FUNC66(GX_ZT_DISABLE,GX_TF_Z8,0);
	for(i=0;i<GX_MAX_TEVSTAGE;i++) {
		FUNC55(i,GX_TEV_KCSEL_1_4);
		FUNC54(i,GX_TEV_KASEL_1);
		FUNC58(i,GX_TEV_SWAP0,GX_TEV_SWAP0);
	}

	FUNC59(GX_TEV_SWAP0,GX_CH_RED,GX_CH_GREEN,GX_CH_BLUE,GX_CH_ALPHA);
	FUNC59(GX_TEV_SWAP1,GX_CH_RED,GX_CH_RED,GX_CH_RED,GX_CH_ALPHA);
	FUNC59(GX_TEV_SWAP2,GX_CH_GREEN,GX_CH_GREEN,GX_CH_GREEN,GX_CH_ALPHA);
	FUNC59(GX_TEV_SWAP3,GX_CH_BLUE,GX_CH_BLUE,GX_CH_BLUE,GX_CH_ALPHA);
	for(i=0;i<GX_MAX_TEVSTAGE;i++) {
		FUNC53(i);
	}

	FUNC46(0);
	FUNC43(GX_INDTEXSTAGE0,GX_ITS_1,GX_ITS_1);
	FUNC43(GX_INDTEXSTAGE1,GX_ITS_1,GX_ITS_1);
	FUNC43(GX_INDTEXSTAGE2,GX_ITS_1,GX_ITS_1);
	FUNC43(GX_INDTEXSTAGE3,GX_ITS_1,GX_ITS_1);

	FUNC40(GX_FOG_NONE,0,1,0.1,1,(GXColor)BLACK);
	FUNC41(GX_DISABLE,0,NULL);

	FUNC19(GX_BM_NONE,GX_BL_SRCALPHA,GX_BL_INVSRCALPHA,GX_LO_CLEAR);
	FUNC25(GX_ENABLE);
	FUNC18(GX_ENABLE);
	FUNC65(GX_ENABLE,GX_LEQUAL,GX_TRUE);
	FUNC64(GX_TRUE);
	FUNC36(GX_ENABLE);
	FUNC37(GX_DISABLE,0);
	FUNC49(GX_PF_RGB8_Z24,GX_ZC_LINEAR);

	FUNC38(GX_ENABLE,GX_ENABLE);

	flag = 0;
	if(rmode->viHeight==(rmode->xfbHeight<<1)) flag = 1;
	FUNC39(rmode->field_rendering,flag);

	FUNC27((GXColor)GX_DEFAULT_BG,0x00ffffff);
	FUNC34(0,0,rmode->fbWidth,rmode->efbHeight);
	FUNC31(rmode->fbWidth,rmode->efbHeight);
	FUNC35(1.0);
	FUNC26(GX_CLAMP_TOP|GX_CLAMP_BOTTOM);
	FUNC28(GX_FALSE,NULL,GX_FALSE,NULL);
	FUNC33(GX_GM_1_0);
	FUNC32(GX_COPY_PROGRESSIVE);
	FUNC0();

	FUNC13(GX_TRUE);
	FUNC11(GX_TRUE);
	FUNC14(GX_FALSE);
	FUNC12(GX_BM_NONE,GX_BL_ZERO,GX_BL_ONE,GX_LO_SET);
	FUNC9(GX_ALWAYS,0);
	FUNC10(GX_READ_FF);
	FUNC15(GX_DISABLE,0);
	FUNC16(GX_TRUE,GX_ALWAYS,GX_TRUE);

	FUNC42(GX_PERF0_NONE,GX_PERF1_NONE);
	FUNC1();
}