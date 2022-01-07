; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GX_InitGX.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GX_InitGX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@BLACK = common dso_local global i64 0, align 8
@GX_TEXCOORD0 = common dso_local global i32 0, align 4
@GX_TG_MTX2x4 = common dso_local global i32 0, align 4
@GX_TG_TEX0 = common dso_local global i32 0, align 4
@GX_IDENTITY = common dso_local global i32 0, align 4
@GX_TEXCOORD1 = common dso_local global i32 0, align 4
@GX_TG_TEX1 = common dso_local global i32 0, align 4
@GX_TEXCOORD2 = common dso_local global i32 0, align 4
@GX_TG_TEX2 = common dso_local global i32 0, align 4
@GX_TEXCOORD3 = common dso_local global i32 0, align 4
@GX_TG_TEX3 = common dso_local global i32 0, align 4
@GX_TEXCOORD4 = common dso_local global i32 0, align 4
@GX_TG_TEX4 = common dso_local global i32 0, align 4
@GX_TEXCOORD5 = common dso_local global i32 0, align 4
@GX_TG_TEX5 = common dso_local global i32 0, align 4
@GX_TEXCOORD6 = common dso_local global i32 0, align 4
@GX_TG_TEX6 = common dso_local global i32 0, align 4
@GX_TEXCOORD7 = common dso_local global i32 0, align 4
@GX_TG_TEX7 = common dso_local global i32 0, align 4
@GX_TO_ZERO = common dso_local global i32 0, align 4
@GX_DISABLE = common dso_local global i32 0, align 4
@GX_PNMTX0 = common dso_local global i32 0, align 4
@GX_MTX3x4 = common dso_local global i32 0, align 4
@GX_DTTIDENTITY = common dso_local global i32 0, align 4
@GX_CULL_BACK = common dso_local global i32 0, align 4
@GX_CLIP_ENABLE = common dso_local global i32 0, align 4
@GX_COLOR0A0 = common dso_local global i32 0, align 4
@GX_SRC_REG = common dso_local global i32 0, align 4
@GX_SRC_VTX = common dso_local global i32 0, align 4
@GX_LIGHTNULL = common dso_local global i32 0, align 4
@GX_DF_NONE = common dso_local global i32 0, align 4
@GX_AF_NONE = common dso_local global i32 0, align 4
@WHITE = common dso_local global i64 0, align 8
@GX_COLOR1A1 = common dso_local global i32 0, align 4
@__GXDefTexRegionCallback = common dso_local global i32 0, align 4
@__GXDefTlutRegionCallback = common dso_local global i32 0, align 4
@GX_TEVSTAGE0 = common dso_local global i32 0, align 4
@GX_TEXMAP0 = common dso_local global i32 0, align 4
@GX_TEVSTAGE1 = common dso_local global i32 0, align 4
@GX_TEXMAP1 = common dso_local global i32 0, align 4
@GX_TEVSTAGE2 = common dso_local global i32 0, align 4
@GX_TEXMAP2 = common dso_local global i32 0, align 4
@GX_TEVSTAGE3 = common dso_local global i32 0, align 4
@GX_TEXMAP3 = common dso_local global i32 0, align 4
@GX_TEVSTAGE4 = common dso_local global i32 0, align 4
@GX_TEXMAP4 = common dso_local global i32 0, align 4
@GX_TEVSTAGE5 = common dso_local global i32 0, align 4
@GX_TEXMAP5 = common dso_local global i32 0, align 4
@GX_TEVSTAGE6 = common dso_local global i32 0, align 4
@GX_TEXMAP6 = common dso_local global i32 0, align 4
@GX_TEVSTAGE7 = common dso_local global i32 0, align 4
@GX_TEXMAP7 = common dso_local global i32 0, align 4
@GX_TEVSTAGE8 = common dso_local global i32 0, align 4
@GX_TEXCOORDNULL = common dso_local global i32 0, align 4
@GX_TEXMAP_NULL = common dso_local global i32 0, align 4
@GX_COLORNULL = common dso_local global i32 0, align 4
@GX_TEVSTAGE9 = common dso_local global i32 0, align 4
@GX_TEVSTAGE10 = common dso_local global i32 0, align 4
@GX_TEVSTAGE11 = common dso_local global i32 0, align 4
@GX_TEVSTAGE12 = common dso_local global i32 0, align 4
@GX_TEVSTAGE13 = common dso_local global i32 0, align 4
@GX_TEVSTAGE14 = common dso_local global i32 0, align 4
@GX_TEVSTAGE15 = common dso_local global i32 0, align 4
@GX_REPLACE = common dso_local global i32 0, align 4
@GX_ALWAYS = common dso_local global i32 0, align 4
@GX_AOP_AND = common dso_local global i32 0, align 4
@GX_ZT_DISABLE = common dso_local global i32 0, align 4
@GX_TF_Z8 = common dso_local global i32 0, align 4
@GX_MAX_TEVSTAGE = common dso_local global i64 0, align 8
@GX_TEV_KCSEL_1_4 = common dso_local global i32 0, align 4
@GX_TEV_KASEL_1 = common dso_local global i32 0, align 4
@GX_TEV_SWAP0 = common dso_local global i32 0, align 4
@GX_CH_RED = common dso_local global i32 0, align 4
@GX_CH_GREEN = common dso_local global i32 0, align 4
@GX_CH_BLUE = common dso_local global i32 0, align 4
@GX_CH_ALPHA = common dso_local global i32 0, align 4
@GX_TEV_SWAP1 = common dso_local global i32 0, align 4
@GX_TEV_SWAP2 = common dso_local global i32 0, align 4
@GX_TEV_SWAP3 = common dso_local global i32 0, align 4
@GX_INDTEXSTAGE0 = common dso_local global i32 0, align 4
@GX_ITS_1 = common dso_local global i32 0, align 4
@GX_INDTEXSTAGE1 = common dso_local global i32 0, align 4
@GX_INDTEXSTAGE2 = common dso_local global i32 0, align 4
@GX_INDTEXSTAGE3 = common dso_local global i32 0, align 4
@GX_FOG_NONE = common dso_local global i32 0, align 4
@GX_BM_NONE = common dso_local global i32 0, align 4
@GX_BL_SRCALPHA = common dso_local global i32 0, align 4
@GX_BL_INVSRCALPHA = common dso_local global i32 0, align 4
@GX_LO_CLEAR = common dso_local global i32 0, align 4
@GX_ENABLE = common dso_local global i32 0, align 4
@GX_LEQUAL = common dso_local global i32 0, align 4
@GX_TRUE = common dso_local global i32 0, align 4
@GX_PF_RGB8_Z24 = common dso_local global i32 0, align 4
@GX_ZC_LINEAR = common dso_local global i32 0, align 4
@GX_DEFAULT_BG = common dso_local global i64 0, align 8
@GX_CLAMP_TOP = common dso_local global i32 0, align 4
@GX_CLAMP_BOTTOM = common dso_local global i32 0, align 4
@GX_FALSE = common dso_local global i32 0, align 4
@GX_GM_1_0 = common dso_local global i32 0, align 4
@GX_COPY_PROGRESSIVE = common dso_local global i32 0, align 4
@GX_BL_ZERO = common dso_local global i32 0, align 4
@GX_BL_ONE = common dso_local global i32 0, align 4
@GX_LO_SET = common dso_local global i32 0, align 4
@GX_READ_FF = common dso_local global i32 0, align 4
@GX_PERF0_NONE = common dso_local global i32 0, align 4
@GX_PERF1_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__GX_InitGX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__GX_InitGX() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = bitcast %struct.TYPE_13__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 48, i1 false)
  %6 = bitcast i8* %5 to %struct.TYPE_13__*
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i32 1, i32* %12, align 4
  %13 = call %struct.TYPE_14__* @VIDEO_GetPreferredMode(i32* null)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %3, align 8
  %14 = load i64, i64* @BLACK, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @GX_SetCopyClear(i32 %15, i32 16777215)
  %17 = load i32, i32* @GX_TEXCOORD0, align 4
  %18 = load i32, i32* @GX_TG_MTX2x4, align 4
  %19 = load i32, i32* @GX_TG_TEX0, align 4
  %20 = load i32, i32* @GX_IDENTITY, align 4
  %21 = call i32 @GX_SetTexCoordGen(i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @GX_TEXCOORD1, align 4
  %23 = load i32, i32* @GX_TG_MTX2x4, align 4
  %24 = load i32, i32* @GX_TG_TEX1, align 4
  %25 = load i32, i32* @GX_IDENTITY, align 4
  %26 = call i32 @GX_SetTexCoordGen(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @GX_TEXCOORD2, align 4
  %28 = load i32, i32* @GX_TG_MTX2x4, align 4
  %29 = load i32, i32* @GX_TG_TEX2, align 4
  %30 = load i32, i32* @GX_IDENTITY, align 4
  %31 = call i32 @GX_SetTexCoordGen(i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @GX_TEXCOORD3, align 4
  %33 = load i32, i32* @GX_TG_MTX2x4, align 4
  %34 = load i32, i32* @GX_TG_TEX3, align 4
  %35 = load i32, i32* @GX_IDENTITY, align 4
  %36 = call i32 @GX_SetTexCoordGen(i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @GX_TEXCOORD4, align 4
  %38 = load i32, i32* @GX_TG_MTX2x4, align 4
  %39 = load i32, i32* @GX_TG_TEX4, align 4
  %40 = load i32, i32* @GX_IDENTITY, align 4
  %41 = call i32 @GX_SetTexCoordGen(i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @GX_TEXCOORD5, align 4
  %43 = load i32, i32* @GX_TG_MTX2x4, align 4
  %44 = load i32, i32* @GX_TG_TEX5, align 4
  %45 = load i32, i32* @GX_IDENTITY, align 4
  %46 = call i32 @GX_SetTexCoordGen(i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* @GX_TEXCOORD6, align 4
  %48 = load i32, i32* @GX_TG_MTX2x4, align 4
  %49 = load i32, i32* @GX_TG_TEX6, align 4
  %50 = load i32, i32* @GX_IDENTITY, align 4
  %51 = call i32 @GX_SetTexCoordGen(i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @GX_TEXCOORD7, align 4
  %53 = load i32, i32* @GX_TG_MTX2x4, align 4
  %54 = load i32, i32* @GX_TG_TEX7, align 4
  %55 = load i32, i32* @GX_IDENTITY, align 4
  %56 = call i32 @GX_SetTexCoordGen(i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = call i32 @GX_SetNumTexGens(i32 1)
  %58 = call i32 (...) @GX_ClearVtxDesc()
  %59 = call i32 (...) @GX_InvVtxCache()
  %60 = load i32, i32* @GX_TO_ZERO, align 4
  %61 = call i32 @GX_SetLineWidth(i32 6, i32 %60)
  %62 = load i32, i32* @GX_TO_ZERO, align 4
  %63 = call i32 @GX_SetPointSize(i32 6, i32 %62)
  %64 = load i32, i32* @GX_TEXCOORD0, align 4
  %65 = load i32, i32* @GX_DISABLE, align 4
  %66 = load i32, i32* @GX_DISABLE, align 4
  %67 = call i32 @GX_EnableTexOffsets(i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* @GX_TEXCOORD1, align 4
  %69 = load i32, i32* @GX_DISABLE, align 4
  %70 = load i32, i32* @GX_DISABLE, align 4
  %71 = call i32 @GX_EnableTexOffsets(i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* @GX_TEXCOORD2, align 4
  %73 = load i32, i32* @GX_DISABLE, align 4
  %74 = load i32, i32* @GX_DISABLE, align 4
  %75 = call i32 @GX_EnableTexOffsets(i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* @GX_TEXCOORD3, align 4
  %77 = load i32, i32* @GX_DISABLE, align 4
  %78 = load i32, i32* @GX_DISABLE, align 4
  %79 = call i32 @GX_EnableTexOffsets(i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* @GX_TEXCOORD4, align 4
  %81 = load i32, i32* @GX_DISABLE, align 4
  %82 = load i32, i32* @GX_DISABLE, align 4
  %83 = call i32 @GX_EnableTexOffsets(i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* @GX_TEXCOORD5, align 4
  %85 = load i32, i32* @GX_DISABLE, align 4
  %86 = load i32, i32* @GX_DISABLE, align 4
  %87 = call i32 @GX_EnableTexOffsets(i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* @GX_TEXCOORD6, align 4
  %89 = load i32, i32* @GX_DISABLE, align 4
  %90 = load i32, i32* @GX_DISABLE, align 4
  %91 = call i32 @GX_EnableTexOffsets(i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* @GX_TEXCOORD7, align 4
  %93 = load i32, i32* @GX_DISABLE, align 4
  %94 = load i32, i32* @GX_DISABLE, align 4
  %95 = call i32 @GX_EnableTexOffsets(i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* @GX_PNMTX0, align 4
  %97 = call i32 @GX_LoadPosMtxImm(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %4, i32 %96)
  %98 = load i32, i32* @GX_PNMTX0, align 4
  %99 = call i32 @GX_LoadNrmMtxImm(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %4, i32 %98)
  %100 = load i32, i32* @GX_PNMTX0, align 4
  %101 = call i32 @GX_SetCurrentMtx(i32 %100)
  %102 = load i32, i32* @GX_IDENTITY, align 4
  %103 = load i32, i32* @GX_MTX3x4, align 4
  %104 = call i32 @GX_LoadTexMtxImm(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %4, i32 %102, i32 %103)
  %105 = load i32, i32* @GX_DTTIDENTITY, align 4
  %106 = load i32, i32* @GX_MTX3x4, align 4
  %107 = call i32 @GX_LoadTexMtxImm(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %4, i32 %105, i32 %106)
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @GX_SetViewport(i32 0, i32 0, i32 %110, i32 %113, i32 0, i32 1)
  %115 = load i32, i32* @GX_DISABLE, align 4
  %116 = call i32 @GX_SetCoPlanar(i32 %115)
  %117 = load i32, i32* @GX_CULL_BACK, align 4
  %118 = call i32 @GX_SetCullMode(i32 %117)
  %119 = load i32, i32* @GX_CLIP_ENABLE, align 4
  %120 = call i32 @GX_SetClipMode(i32 %119)
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @GX_SetScissor(i32 0, i32 0, i32 %123, i32 %126)
  %128 = call i32 @GX_SetScissorBoxOffset(i32 0, i32 0)
  %129 = call i32 @GX_SetNumChans(i32 0)
  %130 = load i32, i32* @GX_COLOR0A0, align 4
  %131 = load i32, i32* @GX_DISABLE, align 4
  %132 = load i32, i32* @GX_SRC_REG, align 4
  %133 = load i32, i32* @GX_SRC_VTX, align 4
  %134 = load i32, i32* @GX_LIGHTNULL, align 4
  %135 = load i32, i32* @GX_DF_NONE, align 4
  %136 = load i32, i32* @GX_AF_NONE, align 4
  %137 = call i32 @GX_SetChanCtrl(i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* @GX_COLOR0A0, align 4
  %139 = load i64, i64* @BLACK, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @GX_SetChanAmbColor(i32 %138, i32 %140)
  %142 = load i32, i32* @GX_COLOR0A0, align 4
  %143 = load i64, i64* @WHITE, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @GX_SetChanMatColor(i32 %142, i32 %144)
  %146 = load i32, i32* @GX_COLOR1A1, align 4
  %147 = load i32, i32* @GX_DISABLE, align 4
  %148 = load i32, i32* @GX_SRC_REG, align 4
  %149 = load i32, i32* @GX_SRC_VTX, align 4
  %150 = load i32, i32* @GX_LIGHTNULL, align 4
  %151 = load i32, i32* @GX_DF_NONE, align 4
  %152 = load i32, i32* @GX_AF_NONE, align 4
  %153 = call i32 @GX_SetChanCtrl(i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152)
  %154 = load i32, i32* @GX_COLOR1A1, align 4
  %155 = load i64, i64* @BLACK, align 8
  %156 = trunc i64 %155 to i32
  %157 = call i32 @GX_SetChanAmbColor(i32 %154, i32 %156)
  %158 = load i32, i32* @GX_COLOR1A1, align 4
  %159 = load i64, i64* @WHITE, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 @GX_SetChanMatColor(i32 %158, i32 %160)
  %162 = call i32 (...) @GX_InvalidateTexAll()
  %163 = load i32, i32* @__GXDefTexRegionCallback, align 4
  %164 = call i32 @GX_SetTexRegionCallback(i32 %163)
  %165 = load i32, i32* @__GXDefTlutRegionCallback, align 4
  %166 = call i32 @GX_SetTlutRegionCallback(i32 %165)
  %167 = load i32, i32* @GX_TEVSTAGE0, align 4
  %168 = load i32, i32* @GX_TEXCOORD0, align 4
  %169 = load i32, i32* @GX_TEXMAP0, align 4
  %170 = load i32, i32* @GX_COLOR0A0, align 4
  %171 = call i32 @GX_SetTevOrder(i32 %167, i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* @GX_TEVSTAGE1, align 4
  %173 = load i32, i32* @GX_TEXCOORD1, align 4
  %174 = load i32, i32* @GX_TEXMAP1, align 4
  %175 = load i32, i32* @GX_COLOR0A0, align 4
  %176 = call i32 @GX_SetTevOrder(i32 %172, i32 %173, i32 %174, i32 %175)
  %177 = load i32, i32* @GX_TEVSTAGE2, align 4
  %178 = load i32, i32* @GX_TEXCOORD2, align 4
  %179 = load i32, i32* @GX_TEXMAP2, align 4
  %180 = load i32, i32* @GX_COLOR0A0, align 4
  %181 = call i32 @GX_SetTevOrder(i32 %177, i32 %178, i32 %179, i32 %180)
  %182 = load i32, i32* @GX_TEVSTAGE3, align 4
  %183 = load i32, i32* @GX_TEXCOORD3, align 4
  %184 = load i32, i32* @GX_TEXMAP3, align 4
  %185 = load i32, i32* @GX_COLOR0A0, align 4
  %186 = call i32 @GX_SetTevOrder(i32 %182, i32 %183, i32 %184, i32 %185)
  %187 = load i32, i32* @GX_TEVSTAGE4, align 4
  %188 = load i32, i32* @GX_TEXCOORD4, align 4
  %189 = load i32, i32* @GX_TEXMAP4, align 4
  %190 = load i32, i32* @GX_COLOR0A0, align 4
  %191 = call i32 @GX_SetTevOrder(i32 %187, i32 %188, i32 %189, i32 %190)
  %192 = load i32, i32* @GX_TEVSTAGE5, align 4
  %193 = load i32, i32* @GX_TEXCOORD5, align 4
  %194 = load i32, i32* @GX_TEXMAP5, align 4
  %195 = load i32, i32* @GX_COLOR0A0, align 4
  %196 = call i32 @GX_SetTevOrder(i32 %192, i32 %193, i32 %194, i32 %195)
  %197 = load i32, i32* @GX_TEVSTAGE6, align 4
  %198 = load i32, i32* @GX_TEXCOORD6, align 4
  %199 = load i32, i32* @GX_TEXMAP6, align 4
  %200 = load i32, i32* @GX_COLOR0A0, align 4
  %201 = call i32 @GX_SetTevOrder(i32 %197, i32 %198, i32 %199, i32 %200)
  %202 = load i32, i32* @GX_TEVSTAGE7, align 4
  %203 = load i32, i32* @GX_TEXCOORD7, align 4
  %204 = load i32, i32* @GX_TEXMAP7, align 4
  %205 = load i32, i32* @GX_COLOR0A0, align 4
  %206 = call i32 @GX_SetTevOrder(i32 %202, i32 %203, i32 %204, i32 %205)
  %207 = load i32, i32* @GX_TEVSTAGE8, align 4
  %208 = load i32, i32* @GX_TEXCOORDNULL, align 4
  %209 = load i32, i32* @GX_TEXMAP_NULL, align 4
  %210 = load i32, i32* @GX_COLORNULL, align 4
  %211 = call i32 @GX_SetTevOrder(i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* @GX_TEVSTAGE9, align 4
  %213 = load i32, i32* @GX_TEXCOORDNULL, align 4
  %214 = load i32, i32* @GX_TEXMAP_NULL, align 4
  %215 = load i32, i32* @GX_COLORNULL, align 4
  %216 = call i32 @GX_SetTevOrder(i32 %212, i32 %213, i32 %214, i32 %215)
  %217 = load i32, i32* @GX_TEVSTAGE10, align 4
  %218 = load i32, i32* @GX_TEXCOORDNULL, align 4
  %219 = load i32, i32* @GX_TEXMAP_NULL, align 4
  %220 = load i32, i32* @GX_COLORNULL, align 4
  %221 = call i32 @GX_SetTevOrder(i32 %217, i32 %218, i32 %219, i32 %220)
  %222 = load i32, i32* @GX_TEVSTAGE11, align 4
  %223 = load i32, i32* @GX_TEXCOORDNULL, align 4
  %224 = load i32, i32* @GX_TEXMAP_NULL, align 4
  %225 = load i32, i32* @GX_COLORNULL, align 4
  %226 = call i32 @GX_SetTevOrder(i32 %222, i32 %223, i32 %224, i32 %225)
  %227 = load i32, i32* @GX_TEVSTAGE12, align 4
  %228 = load i32, i32* @GX_TEXCOORDNULL, align 4
  %229 = load i32, i32* @GX_TEXMAP_NULL, align 4
  %230 = load i32, i32* @GX_COLORNULL, align 4
  %231 = call i32 @GX_SetTevOrder(i32 %227, i32 %228, i32 %229, i32 %230)
  %232 = load i32, i32* @GX_TEVSTAGE13, align 4
  %233 = load i32, i32* @GX_TEXCOORDNULL, align 4
  %234 = load i32, i32* @GX_TEXMAP_NULL, align 4
  %235 = load i32, i32* @GX_COLORNULL, align 4
  %236 = call i32 @GX_SetTevOrder(i32 %232, i32 %233, i32 %234, i32 %235)
  %237 = load i32, i32* @GX_TEVSTAGE14, align 4
  %238 = load i32, i32* @GX_TEXCOORDNULL, align 4
  %239 = load i32, i32* @GX_TEXMAP_NULL, align 4
  %240 = load i32, i32* @GX_COLORNULL, align 4
  %241 = call i32 @GX_SetTevOrder(i32 %237, i32 %238, i32 %239, i32 %240)
  %242 = load i32, i32* @GX_TEVSTAGE15, align 4
  %243 = load i32, i32* @GX_TEXCOORDNULL, align 4
  %244 = load i32, i32* @GX_TEXMAP_NULL, align 4
  %245 = load i32, i32* @GX_COLORNULL, align 4
  %246 = call i32 @GX_SetTevOrder(i32 %242, i32 %243, i32 %244, i32 %245)
  %247 = call i32 @GX_SetNumTevStages(i32 1)
  %248 = load i32, i32* @GX_TEVSTAGE0, align 4
  %249 = load i32, i32* @GX_REPLACE, align 4
  %250 = call i32 @GX_SetTevOp(i32 %248, i32 %249)
  %251 = load i32, i32* @GX_ALWAYS, align 4
  %252 = load i32, i32* @GX_AOP_AND, align 4
  %253 = load i32, i32* @GX_ALWAYS, align 4
  %254 = call i32 @GX_SetAlphaCompare(i32 %251, i32 0, i32 %252, i32 %253, i32 0)
  %255 = load i32, i32* @GX_ZT_DISABLE, align 4
  %256 = load i32, i32* @GX_TF_Z8, align 4
  %257 = call i32 @GX_SetZTexture(i32 %255, i32 %256, i32 0)
  store i64 0, i64* %1, align 8
  br label %258

258:                                              ; preds = %273, %0
  %259 = load i64, i64* %1, align 8
  %260 = load i64, i64* @GX_MAX_TEVSTAGE, align 8
  %261 = icmp slt i64 %259, %260
  br i1 %261, label %262, label %276

262:                                              ; preds = %258
  %263 = load i64, i64* %1, align 8
  %264 = load i32, i32* @GX_TEV_KCSEL_1_4, align 4
  %265 = call i32 @GX_SetTevKColorSel(i64 %263, i32 %264)
  %266 = load i64, i64* %1, align 8
  %267 = load i32, i32* @GX_TEV_KASEL_1, align 4
  %268 = call i32 @GX_SetTevKAlphaSel(i64 %266, i32 %267)
  %269 = load i64, i64* %1, align 8
  %270 = load i32, i32* @GX_TEV_SWAP0, align 4
  %271 = load i32, i32* @GX_TEV_SWAP0, align 4
  %272 = call i32 @GX_SetTevSwapMode(i64 %269, i32 %270, i32 %271)
  br label %273

273:                                              ; preds = %262
  %274 = load i64, i64* %1, align 8
  %275 = add nsw i64 %274, 1
  store i64 %275, i64* %1, align 8
  br label %258

276:                                              ; preds = %258
  %277 = load i32, i32* @GX_TEV_SWAP0, align 4
  %278 = load i32, i32* @GX_CH_RED, align 4
  %279 = load i32, i32* @GX_CH_GREEN, align 4
  %280 = load i32, i32* @GX_CH_BLUE, align 4
  %281 = load i32, i32* @GX_CH_ALPHA, align 4
  %282 = call i32 @GX_SetTevSwapModeTable(i32 %277, i32 %278, i32 %279, i32 %280, i32 %281)
  %283 = load i32, i32* @GX_TEV_SWAP1, align 4
  %284 = load i32, i32* @GX_CH_RED, align 4
  %285 = load i32, i32* @GX_CH_RED, align 4
  %286 = load i32, i32* @GX_CH_RED, align 4
  %287 = load i32, i32* @GX_CH_ALPHA, align 4
  %288 = call i32 @GX_SetTevSwapModeTable(i32 %283, i32 %284, i32 %285, i32 %286, i32 %287)
  %289 = load i32, i32* @GX_TEV_SWAP2, align 4
  %290 = load i32, i32* @GX_CH_GREEN, align 4
  %291 = load i32, i32* @GX_CH_GREEN, align 4
  %292 = load i32, i32* @GX_CH_GREEN, align 4
  %293 = load i32, i32* @GX_CH_ALPHA, align 4
  %294 = call i32 @GX_SetTevSwapModeTable(i32 %289, i32 %290, i32 %291, i32 %292, i32 %293)
  %295 = load i32, i32* @GX_TEV_SWAP3, align 4
  %296 = load i32, i32* @GX_CH_BLUE, align 4
  %297 = load i32, i32* @GX_CH_BLUE, align 4
  %298 = load i32, i32* @GX_CH_BLUE, align 4
  %299 = load i32, i32* @GX_CH_ALPHA, align 4
  %300 = call i32 @GX_SetTevSwapModeTable(i32 %295, i32 %296, i32 %297, i32 %298, i32 %299)
  store i64 0, i64* %1, align 8
  br label %301

301:                                              ; preds = %308, %276
  %302 = load i64, i64* %1, align 8
  %303 = load i64, i64* @GX_MAX_TEVSTAGE, align 8
  %304 = icmp slt i64 %302, %303
  br i1 %304, label %305, label %311

305:                                              ; preds = %301
  %306 = load i64, i64* %1, align 8
  %307 = call i32 @GX_SetTevDirect(i64 %306)
  br label %308

308:                                              ; preds = %305
  %309 = load i64, i64* %1, align 8
  %310 = add nsw i64 %309, 1
  store i64 %310, i64* %1, align 8
  br label %301

311:                                              ; preds = %301
  %312 = call i32 @GX_SetNumIndStages(i32 0)
  %313 = load i32, i32* @GX_INDTEXSTAGE0, align 4
  %314 = load i32, i32* @GX_ITS_1, align 4
  %315 = load i32, i32* @GX_ITS_1, align 4
  %316 = call i32 @GX_SetIndTexCoordScale(i32 %313, i32 %314, i32 %315)
  %317 = load i32, i32* @GX_INDTEXSTAGE1, align 4
  %318 = load i32, i32* @GX_ITS_1, align 4
  %319 = load i32, i32* @GX_ITS_1, align 4
  %320 = call i32 @GX_SetIndTexCoordScale(i32 %317, i32 %318, i32 %319)
  %321 = load i32, i32* @GX_INDTEXSTAGE2, align 4
  %322 = load i32, i32* @GX_ITS_1, align 4
  %323 = load i32, i32* @GX_ITS_1, align 4
  %324 = call i32 @GX_SetIndTexCoordScale(i32 %321, i32 %322, i32 %323)
  %325 = load i32, i32* @GX_INDTEXSTAGE3, align 4
  %326 = load i32, i32* @GX_ITS_1, align 4
  %327 = load i32, i32* @GX_ITS_1, align 4
  %328 = call i32 @GX_SetIndTexCoordScale(i32 %325, i32 %326, i32 %327)
  %329 = load i32, i32* @GX_FOG_NONE, align 4
  %330 = load i64, i64* @BLACK, align 8
  %331 = trunc i64 %330 to i32
  %332 = call i32 @GX_SetFog(i32 %329, i32 0, i32 1, double 1.000000e-01, i32 1, i32 %331)
  %333 = load i32, i32* @GX_DISABLE, align 4
  %334 = call i32 @GX_SetFogRangeAdj(i32 %333, i32 0, i32* null)
  %335 = load i32, i32* @GX_BM_NONE, align 4
  %336 = load i32, i32* @GX_BL_SRCALPHA, align 4
  %337 = load i32, i32* @GX_BL_INVSRCALPHA, align 4
  %338 = load i32, i32* @GX_LO_CLEAR, align 4
  %339 = call i32 @GX_SetBlendMode(i32 %335, i32 %336, i32 %337, i32 %338)
  %340 = load i32, i32* @GX_ENABLE, align 4
  %341 = call i32 @GX_SetColorUpdate(i32 %340)
  %342 = load i32, i32* @GX_ENABLE, align 4
  %343 = call i32 @GX_SetAlphaUpdate(i32 %342)
  %344 = load i32, i32* @GX_ENABLE, align 4
  %345 = load i32, i32* @GX_LEQUAL, align 4
  %346 = load i32, i32* @GX_TRUE, align 4
  %347 = call i32 @GX_SetZMode(i32 %344, i32 %345, i32 %346)
  %348 = load i32, i32* @GX_TRUE, align 4
  %349 = call i32 @GX_SetZCompLoc(i32 %348)
  %350 = load i32, i32* @GX_ENABLE, align 4
  %351 = call i32 @GX_SetDither(i32 %350)
  %352 = load i32, i32* @GX_DISABLE, align 4
  %353 = call i32 @GX_SetDstAlpha(i32 %352, i32 0)
  %354 = load i32, i32* @GX_PF_RGB8_Z24, align 4
  %355 = load i32, i32* @GX_ZC_LINEAR, align 4
  %356 = call i32 @GX_SetPixelFmt(i32 %354, i32 %355)
  %357 = load i32, i32* @GX_ENABLE, align 4
  %358 = load i32, i32* @GX_ENABLE, align 4
  %359 = call i32 @GX_SetFieldMask(i32 %357, i32 %358)
  store i32 0, i32* %2, align 4
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = shl i32 %365, 1
  %367 = icmp eq i32 %362, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %311
  store i32 1, i32* %2, align 4
  br label %369

369:                                              ; preds = %368, %311
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* %2, align 4
  %374 = call i32 @GX_SetFieldMode(i32 %372, i32 %373)
  %375 = load i64, i64* @GX_DEFAULT_BG, align 8
  %376 = trunc i64 %375 to i32
  %377 = call i32 @GX_SetCopyClear(i32 %376, i32 16777215)
  %378 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @GX_SetDispCopySrc(i32 0, i32 0, i32 %380, i32 %383)
  %385 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @GX_SetDispCopyDst(i32 %387, i32 %390)
  %392 = call i32 @GX_SetDispCopyYScale(double 1.000000e+00)
  %393 = load i32, i32* @GX_CLAMP_TOP, align 4
  %394 = load i32, i32* @GX_CLAMP_BOTTOM, align 4
  %395 = or i32 %393, %394
  %396 = call i32 @GX_SetCopyClamp(i32 %395)
  %397 = load i32, i32* @GX_FALSE, align 4
  %398 = load i32, i32* @GX_FALSE, align 4
  %399 = call i32 @GX_SetCopyFilter(i32 %397, i32* null, i32 %398, i32* null)
  %400 = load i32, i32* @GX_GM_1_0, align 4
  %401 = call i32 @GX_SetDispCopyGamma(i32 %400)
  %402 = load i32, i32* @GX_COPY_PROGRESSIVE, align 4
  %403 = call i32 @GX_SetDispCopyFrame2Field(i32 %402)
  %404 = call i32 (...) @GX_ClearBoundingBox()
  %405 = load i32, i32* @GX_TRUE, align 4
  %406 = call i32 @GX_PokeColorUpdate(i32 %405)
  %407 = load i32, i32* @GX_TRUE, align 4
  %408 = call i32 @GX_PokeAlphaUpdate(i32 %407)
  %409 = load i32, i32* @GX_FALSE, align 4
  %410 = call i32 @GX_PokeDither(i32 %409)
  %411 = load i32, i32* @GX_BM_NONE, align 4
  %412 = load i32, i32* @GX_BL_ZERO, align 4
  %413 = load i32, i32* @GX_BL_ONE, align 4
  %414 = load i32, i32* @GX_LO_SET, align 4
  %415 = call i32 @GX_PokeBlendMode(i32 %411, i32 %412, i32 %413, i32 %414)
  %416 = load i32, i32* @GX_ALWAYS, align 4
  %417 = call i32 @GX_PokeAlphaMode(i32 %416, i32 0)
  %418 = load i32, i32* @GX_READ_FF, align 4
  %419 = call i32 @GX_PokeAlphaRead(i32 %418)
  %420 = load i32, i32* @GX_DISABLE, align 4
  %421 = call i32 @GX_PokeDstAlpha(i32 %420, i32 0)
  %422 = load i32, i32* @GX_TRUE, align 4
  %423 = load i32, i32* @GX_ALWAYS, align 4
  %424 = load i32, i32* @GX_TRUE, align 4
  %425 = call i32 @GX_PokeZMode(i32 %422, i32 %423, i32 %424)
  %426 = load i32, i32* @GX_PERF0_NONE, align 4
  %427 = load i32, i32* @GX_PERF1_NONE, align 4
  %428 = call i32 @GX_SetGPMetric(i32 %426, i32 %427)
  %429 = call i32 (...) @GX_ClearGPMetric()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_14__* @VIDEO_GetPreferredMode(i32*) #2

declare dso_local i32 @GX_SetCopyClear(i32, i32) #2

declare dso_local i32 @GX_SetTexCoordGen(i32, i32, i32, i32) #2

declare dso_local i32 @GX_SetNumTexGens(i32) #2

declare dso_local i32 @GX_ClearVtxDesc(...) #2

declare dso_local i32 @GX_InvVtxCache(...) #2

declare dso_local i32 @GX_SetLineWidth(i32, i32) #2

declare dso_local i32 @GX_SetPointSize(i32, i32) #2

declare dso_local i32 @GX_EnableTexOffsets(i32, i32, i32) #2

declare dso_local i32 @GX_LoadPosMtxImm(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8, i32) #2

declare dso_local i32 @GX_LoadNrmMtxImm(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8, i32) #2

declare dso_local i32 @GX_SetCurrentMtx(i32) #2

declare dso_local i32 @GX_LoadTexMtxImm(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8, i32, i32) #2

declare dso_local i32 @GX_SetViewport(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @GX_SetCoPlanar(i32) #2

declare dso_local i32 @GX_SetCullMode(i32) #2

declare dso_local i32 @GX_SetClipMode(i32) #2

declare dso_local i32 @GX_SetScissor(i32, i32, i32, i32) #2

declare dso_local i32 @GX_SetScissorBoxOffset(i32, i32) #2

declare dso_local i32 @GX_SetNumChans(i32) #2

declare dso_local i32 @GX_SetChanCtrl(i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @GX_SetChanAmbColor(i32, i32) #2

declare dso_local i32 @GX_SetChanMatColor(i32, i32) #2

declare dso_local i32 @GX_InvalidateTexAll(...) #2

declare dso_local i32 @GX_SetTexRegionCallback(i32) #2

declare dso_local i32 @GX_SetTlutRegionCallback(i32) #2

declare dso_local i32 @GX_SetTevOrder(i32, i32, i32, i32) #2

declare dso_local i32 @GX_SetNumTevStages(i32) #2

declare dso_local i32 @GX_SetTevOp(i32, i32) #2

declare dso_local i32 @GX_SetAlphaCompare(i32, i32, i32, i32, i32) #2

declare dso_local i32 @GX_SetZTexture(i32, i32, i32) #2

declare dso_local i32 @GX_SetTevKColorSel(i64, i32) #2

declare dso_local i32 @GX_SetTevKAlphaSel(i64, i32) #2

declare dso_local i32 @GX_SetTevSwapMode(i64, i32, i32) #2

declare dso_local i32 @GX_SetTevSwapModeTable(i32, i32, i32, i32, i32) #2

declare dso_local i32 @GX_SetTevDirect(i64) #2

declare dso_local i32 @GX_SetNumIndStages(i32) #2

declare dso_local i32 @GX_SetIndTexCoordScale(i32, i32, i32) #2

declare dso_local i32 @GX_SetFog(i32, i32, i32, double, i32, i32) #2

declare dso_local i32 @GX_SetFogRangeAdj(i32, i32, i32*) #2

declare dso_local i32 @GX_SetBlendMode(i32, i32, i32, i32) #2

declare dso_local i32 @GX_SetColorUpdate(i32) #2

declare dso_local i32 @GX_SetAlphaUpdate(i32) #2

declare dso_local i32 @GX_SetZMode(i32, i32, i32) #2

declare dso_local i32 @GX_SetZCompLoc(i32) #2

declare dso_local i32 @GX_SetDither(i32) #2

declare dso_local i32 @GX_SetDstAlpha(i32, i32) #2

declare dso_local i32 @GX_SetPixelFmt(i32, i32) #2

declare dso_local i32 @GX_SetFieldMask(i32, i32) #2

declare dso_local i32 @GX_SetFieldMode(i32, i32) #2

declare dso_local i32 @GX_SetDispCopySrc(i32, i32, i32, i32) #2

declare dso_local i32 @GX_SetDispCopyDst(i32, i32) #2

declare dso_local i32 @GX_SetDispCopyYScale(double) #2

declare dso_local i32 @GX_SetCopyClamp(i32) #2

declare dso_local i32 @GX_SetCopyFilter(i32, i32*, i32, i32*) #2

declare dso_local i32 @GX_SetDispCopyGamma(i32) #2

declare dso_local i32 @GX_SetDispCopyFrame2Field(i32) #2

declare dso_local i32 @GX_ClearBoundingBox(...) #2

declare dso_local i32 @GX_PokeColorUpdate(i32) #2

declare dso_local i32 @GX_PokeAlphaUpdate(i32) #2

declare dso_local i32 @GX_PokeDither(i32) #2

declare dso_local i32 @GX_PokeBlendMode(i32, i32, i32, i32) #2

declare dso_local i32 @GX_PokeAlphaMode(i32, i32) #2

declare dso_local i32 @GX_PokeAlphaRead(i32) #2

declare dso_local i32 @GX_PokeDstAlpha(i32, i32) #2

declare dso_local i32 @GX_PokeZMode(i32, i32, i32) #2

declare dso_local i32 @GX_SetGPMetric(i32, i32) #2

declare dso_local i32 @GX_ClearGPMetric(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
