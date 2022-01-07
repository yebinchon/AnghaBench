; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_font.c_DrawChar.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_font.c_DrawChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@fontTexture = common dso_local global i32 0, align 4
@fontHeader = common dso_local global %struct.TYPE_5__* null, align 8
@GX_TF_I4 = common dso_local global i32 0, align 4
@GX_CLAMP = common dso_local global i32 0, align 4
@GX_FALSE = common dso_local global i32 0, align 4
@GX_TEXMAP0 = common dso_local global i32 0, align 4
@GX_QUADS = common dso_local global i32 0, align 4
@GX_VTXFMT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i32, i32, i32, i64, i32)* @DrawChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawChar(i8 zeroext %0, i32 %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %4, i64* %15, align 4
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %5, i32* %16, align 4
  %17 = bitcast %struct.TYPE_4__* %7 to i8*
  %18 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  store i8 %0, i8* %9, align 1
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  %19 = load i32, i32* @fontTexture, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fontHeader, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fontHeader, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GX_TF_I4, align 4
  %27 = load i32, i32* @GX_CLAMP, align 4
  %28 = load i32, i32* @GX_CLAMP, align 4
  %29 = load i32, i32* @GX_FALSE, align 4
  %30 = call i32 @GX_InitTexObj(i32* %13, i32 %19, i32 %22, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @GX_TEXMAP0, align 4
  %32 = call i32 @GX_LoadTexObj(i32* %13, i32 %31)
  %33 = load i32, i32* @fontTexture, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fontHeader, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fontHeader, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = sdiv i32 %40, 2
  %42 = call i32 @memset(i32 %33, i32 0, i32 %41)
  %43 = load i8, i8* %9, align 1
  %44 = load i32, i32* @fontTexture, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fontHeader, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, 2
  %49 = call i32 @GetFontTexel(i8 zeroext %43, i32 %44, i32 0, i32 %48)
  %50 = load i32, i32* @fontTexture, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fontHeader, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fontHeader, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  %58 = sdiv i32 %57, 2
  %59 = call i32 @DCFlushRange(i32 %50, i32 %58)
  %60 = call i32 (...) @GX_InvalidateTexAll()
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fontHeader, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %12, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fontHeader, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %65, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* @GX_QUADS, align 4
  %71 = load i32, i32* @GX_VTXFMT0, align 4
  %72 = call i32 @GX_Begin(i32 %70, i32 %71, i32 4)
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %74, %75
  %77 = call i32 @GX_Position2s16(i32 %73, i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @GX_Color4u8(i32 %79, i32 %81, i32 %83, i32 255)
  %85 = call i32 @GX_TexCoord2f32(double 0.000000e+00, double 0.000000e+00)
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = sub nsw i32 %89, %90
  %92 = call i32 @GX_Position2s16(i32 %88, i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @GX_Color4u8(i32 %94, i32 %96, i32 %98, i32 255)
  %100 = call i32 @GX_TexCoord2f32(double 1.000000e+00, double 0.000000e+00)
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @GX_Position2s16(i32 %103, i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @GX_Color4u8(i32 %107, i32 %109, i32 %111, i32 255)
  %113 = call i32 @GX_TexCoord2f32(double 1.000000e+00, double 1.000000e+00)
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @GX_Position2s16(i32 %114, i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @GX_Color4u8(i32 %118, i32 %120, i32 %122, i32 255)
  %124 = call i32 @GX_TexCoord2f32(double 0.000000e+00, double 1.000000e+00)
  %125 = call i32 (...) @GX_End()
  %126 = call i32 (...) @GX_DrawDone()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GX_InitTexObj(i32*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @GX_LoadTexObj(i32*, i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @GetFontTexel(i8 zeroext, i32, i32, i32) #2

declare dso_local i32 @DCFlushRange(i32, i32) #2

declare dso_local i32 @GX_InvalidateTexAll(...) #2

declare dso_local i32 @GX_Begin(i32, i32, i32) #2

declare dso_local i32 @GX_Position2s16(i32, i32) #2

declare dso_local i32 @GX_Color4u8(i32, i32, i32, i32) #2

declare dso_local i32 @GX_TexCoord2f32(double, double) #2

declare dso_local i32 @GX_End(...) #2

declare dso_local i32 @GX_DrawDone(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
