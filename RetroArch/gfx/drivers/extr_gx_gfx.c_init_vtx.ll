; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx_gfx.c_init_vtx.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx_gfx.c_init_vtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@retraceCount = common dso_local global i32 0, align 4
@referenceRetraceCount = common dso_local global i32 0, align 4
@GX_CULL_NONE = common dso_local global i32 0, align 4
@GX_CLIP_DISABLE = common dso_local global i32 0, align 4
@GX_ENABLE = common dso_local global i32 0, align 4
@GX_ALWAYS = common dso_local global i32 0, align 4
@GX_TRUE = common dso_local global i32 0, align 4
@GX_FALSE = common dso_local global i32 0, align 4
@GX_ORTHOGRAPHIC = common dso_local global i32 0, align 4
@GX_VA_POS = common dso_local global i32 0, align 4
@GX_INDEX8 = common dso_local global i32 0, align 4
@GX_VA_TEX0 = common dso_local global i32 0, align 4
@GX_VA_CLR0 = common dso_local global i32 0, align 4
@GX_VTXFMT0 = common dso_local global i32 0, align 4
@GX_POS_XYZ = common dso_local global i32 0, align 4
@GX_F32 = common dso_local global i32 0, align 4
@GX_TEX_ST = common dso_local global i32 0, align 4
@GX_CLR_RGBA = common dso_local global i32 0, align 4
@GX_RGBA8 = common dso_local global i32 0, align 4
@verts = common dso_local global i32 0, align 4
@vertex_ptr = common dso_local global i32 0, align 4
@color_ptr = common dso_local global i32 0, align 4
@GX_COLOR0A0 = common dso_local global i32 0, align 4
@GX_DISABLE = common dso_local global i32 0, align 4
@GX_SRC_REG = common dso_local global i32 0, align 4
@GX_SRC_VTX = common dso_local global i32 0, align 4
@GX_LIGHTNULL = common dso_local global i32 0, align 4
@GX_DF_NONE = common dso_local global i32 0, align 4
@GX_AF_NONE = common dso_local global i32 0, align 4
@GX_TEVSTAGE0 = common dso_local global i32 0, align 4
@GX_MODULATE = common dso_local global i32 0, align 4
@GX_TEXCOORD0 = common dso_local global i32 0, align 4
@GX_TEXMAP0 = common dso_local global i32 0, align 4
@GX_BM_BLEND = common dso_local global i32 0, align 4
@GX_BL_SRCALPHA = common dso_local global i32 0, align 4
@GX_BL_INVSRCALPHA = common dso_local global i32 0, align 4
@GX_LO_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"[GX]: Reallocate texture.\0A\00", align 1
@g_tex = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@RARCH_SCALE_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"[GX]: Error allocating video texture\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*)* @init_vtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_vtx(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @_CPU_ISR_Disable(i32 %10)
  %12 = load i32, i32* @retraceCount, align 4
  store i32 %12, i32* @referenceRetraceCount, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @_CPU_ISR_Restore(i32 %13)
  %15 = load i32, i32* @GX_CULL_NONE, align 4
  %16 = call i32 @GX_SetCullMode(i32 %15)
  %17 = load i32, i32* @GX_CLIP_DISABLE, align 4
  %18 = call i32 @GX_SetClipMode(i32 %17)
  %19 = load i32, i32* @GX_ENABLE, align 4
  %20 = load i32, i32* @GX_ALWAYS, align 4
  %21 = load i32, i32* @GX_ENABLE, align 4
  %22 = call i32 @GX_SetZMode(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @GX_TRUE, align 4
  %24 = call i32 @GX_SetColorUpdate(i32 %23)
  %25 = load i32, i32* @GX_FALSE, align 4
  %26 = call i32 @GX_SetAlphaUpdate(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @guOrtho(i32 %27, i32 1, i32 -1, i32 -1, i32 1, double 4.000000e-01, double 6.000000e-01)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @GX_ORTHOGRAPHIC, align 4
  %31 = call i32 @GX_LoadProjectionMtx(i32 %29, i32 %30)
  %32 = call i32 (...) @GX_ClearVtxDesc()
  %33 = load i32, i32* @GX_VA_POS, align 4
  %34 = load i32, i32* @GX_INDEX8, align 4
  %35 = call i32 @GX_SetVtxDesc(i32 %33, i32 %34)
  %36 = load i32, i32* @GX_VA_TEX0, align 4
  %37 = load i32, i32* @GX_INDEX8, align 4
  %38 = call i32 @GX_SetVtxDesc(i32 %36, i32 %37)
  %39 = load i32, i32* @GX_VA_CLR0, align 4
  %40 = load i32, i32* @GX_INDEX8, align 4
  %41 = call i32 @GX_SetVtxDesc(i32 %39, i32 %40)
  %42 = load i32, i32* @GX_VTXFMT0, align 4
  %43 = load i32, i32* @GX_VA_POS, align 4
  %44 = load i32, i32* @GX_POS_XYZ, align 4
  %45 = load i32, i32* @GX_F32, align 4
  %46 = call i32 @GX_SetVtxAttrFmt(i32 %42, i32 %43, i32 %44, i32 %45, i32 0)
  %47 = load i32, i32* @GX_VTXFMT0, align 4
  %48 = load i32, i32* @GX_VA_TEX0, align 4
  %49 = load i32, i32* @GX_TEX_ST, align 4
  %50 = load i32, i32* @GX_F32, align 4
  %51 = call i32 @GX_SetVtxAttrFmt(i32 %47, i32 %48, i32 %49, i32 %50, i32 0)
  %52 = load i32, i32* @GX_VTXFMT0, align 4
  %53 = load i32, i32* @GX_VA_CLR0, align 4
  %54 = load i32, i32* @GX_CLR_RGBA, align 4
  %55 = load i32, i32* @GX_RGBA8, align 4
  %56 = call i32 @GX_SetVtxAttrFmt(i32 %52, i32 %53, i32 %54, i32 %55, i32 0)
  %57 = load i32, i32* @GX_VA_POS, align 4
  %58 = load i32, i32* @verts, align 4
  %59 = call i32 @GX_SetArray(i32 %57, i32 %58, i32 12)
  %60 = load i32, i32* @GX_VA_TEX0, align 4
  %61 = load i32, i32* @vertex_ptr, align 4
  %62 = call i32 @GX_SetArray(i32 %60, i32 %61, i32 8)
  %63 = load i32, i32* @GX_VA_CLR0, align 4
  %64 = load i32, i32* @color_ptr, align 4
  %65 = call i32 @GX_SetArray(i32 %63, i32 %64, i32 16)
  %66 = call i32 @GX_SetNumTexGens(i32 1)
  %67 = call i32 @GX_SetNumChans(i32 1)
  %68 = load i32, i32* @GX_COLOR0A0, align 4
  %69 = load i32, i32* @GX_DISABLE, align 4
  %70 = load i32, i32* @GX_SRC_REG, align 4
  %71 = load i32, i32* @GX_SRC_VTX, align 4
  %72 = load i32, i32* @GX_LIGHTNULL, align 4
  %73 = load i32, i32* @GX_DF_NONE, align 4
  %74 = load i32, i32* @GX_AF_NONE, align 4
  %75 = call i32 @GX_SetChanCtrl(i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* @GX_TEVSTAGE0, align 4
  %77 = load i32, i32* @GX_MODULATE, align 4
  %78 = call i32 @GX_SetTevOp(i32 %76, i32 %77)
  %79 = load i32, i32* @GX_TEVSTAGE0, align 4
  %80 = load i32, i32* @GX_TEXCOORD0, align 4
  %81 = load i32, i32* @GX_TEXMAP0, align 4
  %82 = load i32, i32* @GX_COLOR0A0, align 4
  %83 = call i32 @GX_SetTevOrder(i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = call i32 (...) @GX_InvVtxCache()
  %85 = load i32, i32* @GX_BM_BLEND, align 4
  %86 = load i32, i32* @GX_BL_SRCALPHA, align 4
  %87 = load i32, i32* @GX_BL_INVSRCALPHA, align 4
  %88 = load i32, i32* @GX_LO_CLEAR, align 4
  %89 = call i32 @GX_SetBlendMode(i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %105, label %97

97:                                               ; preds = %2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %105, label %139

105:                                              ; preds = %97, %2
  %106 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_tex, i32 0, i32 2), align 4
  %108 = call i32 @free(i32 %107)
  %109 = load i32, i32* @RARCH_SCALE_BASE, align 4
  %110 = load i32, i32* @RARCH_SCALE_BASE, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %111, %114
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %115, %118
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 4, i32 2
  %126 = mul nsw i32 %119, %125
  %127 = call i32 @memalign(i32 32, i32 %126)
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_tex, i32 0, i32 2), align 4
  %128 = load i32, i32* @RARCH_SCALE_BASE, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %128, %131
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_tex, i32 0, i32 1), align 4
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_tex, i32 0, i32 0), align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_tex, i32 0, i32 2), align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %105
  %136 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %137 = call i32 @exit(i32 1) #3
  unreachable

138:                                              ; preds = %105
  br label %139

139:                                              ; preds = %138, %97
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_tex, i32 0, i32 2), align 4
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_tex, i32 0, i32 0), align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_tex, i32 0, i32 1), align 4
  %143 = mul nsw i32 %141, %142
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = mul nsw i32 %143, %146
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 4, i32 2
  %151 = call i32 @DCFlushRange(i32 %140, i32 %150)
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  store i32 1, i32* %163, align 4
  %164 = load i8*, i8** %3, align 8
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_tex, i32 0, i32 0), align 4
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_tex, i32 0, i32 1), align 4
  %167 = call i32 @init_texture(i8* %164, i32 %165, i32 %166)
  %168 = call i32 (...) @GX_Flush()
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @GX_SetCullMode(i32) #1

declare dso_local i32 @GX_SetClipMode(i32) #1

declare dso_local i32 @GX_SetZMode(i32, i32, i32) #1

declare dso_local i32 @GX_SetColorUpdate(i32) #1

declare dso_local i32 @GX_SetAlphaUpdate(i32) #1

declare dso_local i32 @guOrtho(i32, i32, i32, i32, i32, double, double) #1

declare dso_local i32 @GX_LoadProjectionMtx(i32, i32) #1

declare dso_local i32 @GX_ClearVtxDesc(...) #1

declare dso_local i32 @GX_SetVtxDesc(i32, i32) #1

declare dso_local i32 @GX_SetVtxAttrFmt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX_SetArray(i32, i32, i32) #1

declare dso_local i32 @GX_SetNumTexGens(i32) #1

declare dso_local i32 @GX_SetNumChans(i32) #1

declare dso_local i32 @GX_SetChanCtrl(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX_SetTevOp(i32, i32) #1

declare dso_local i32 @GX_SetTevOrder(i32, i32, i32, i32) #1

declare dso_local i32 @GX_InvVtxCache(...) #1

declare dso_local i32 @GX_SetBlendMode(i32, i32, i32, i32) #1

declare dso_local i32 @RARCH_LOG(i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @memalign(i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @DCFlushRange(i32, i32) #1

declare dso_local i32 @init_texture(i8*, i32, i32) #1

declare dso_local i32 @GX_Flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
