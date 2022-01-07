; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxDrawTexture.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxDrawTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@GX_TF_RGBA8 = common dso_local global i32 0, align 4
@GX_CLAMP = common dso_local global i32 0, align 4
@GX_FALSE = common dso_local global i32 0, align 4
@GX_LINEAR = common dso_local global i32 0, align 4
@GX_LIN_MIP_LIN = common dso_local global i32 0, align 4
@GX_TRUE = common dso_local global i32 0, align 4
@GX_ANISO_4 = common dso_local global i32 0, align 4
@GX_TEXMAP0 = common dso_local global i32 0, align 4
@vmode = common dso_local global %struct.TYPE_5__* null, align 8
@GX_QUADS = common dso_local global i32 0, align 4
@GX_VTXFMT0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gxDrawTexture(%struct.TYPE_4__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  br label %97

17:                                               ; preds = %6
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %97

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @GX_TF_RGBA8, align 4
  %33 = load i32, i32* @GX_CLAMP, align 4
  %34 = load i32, i32* @GX_CLAMP, align 4
  %35 = load i32, i32* @GX_FALSE, align 4
  %36 = call i32 @GX_InitTexObj(i32* %13, i64 %25, i32 %28, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @GX_LINEAR, align 4
  %38 = load i32, i32* @GX_LIN_MIP_LIN, align 4
  %39 = load i32, i32* @GX_FALSE, align 4
  %40 = load i32, i32* @GX_TRUE, align 4
  %41 = load i32, i32* @GX_ANISO_4, align 4
  %42 = call i32 @GX_InitTexObjLOD(i32* %13, i32 %37, i32 %38, double 0.000000e+00, double 1.000000e+01, double 0.000000e+00, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* @GX_TEXMAP0, align 4
  %44 = call i32 @GX_LoadTexObj(i32* %13, i32 %43)
  %45 = call i32 (...) @GX_InvalidateTexAll()
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vmode, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %8, align 8
  %52 = sub nsw i64 %51, %50
  store i64 %52, i64* %8, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vmode, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %9, align 8
  %59 = sub nsw i64 %58, %57
  store i64 %59, i64* %9, align 8
  %60 = load i32, i32* @GX_QUADS, align 4
  %61 = load i32, i32* @GX_VTXFMT0, align 4
  %62 = call i32 @GX_Begin(i32 %60, i32 %61, i32 4)
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %11, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @GX_Position2s16(i64 %63, i64 %66)
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 %68)
  %70 = call i32 @GX_TexCoord2f32(double 0.000000e+00, double 1.000000e+00)
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %10, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %11, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @GX_Position2s16(i64 %73, i64 %76)
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 %78)
  %80 = call i32 @GX_TexCoord2f32(double 1.000000e+00, double 1.000000e+00)
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %10, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @GX_Position2s16(i64 %83, i64 %84)
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 %86)
  %88 = call i32 @GX_TexCoord2f32(double 1.000000e+00, double 0.000000e+00)
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @GX_Position2s16(i64 %89, i64 %90)
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 %92)
  %94 = call i32 @GX_TexCoord2f32(double 0.000000e+00, double 0.000000e+00)
  %95 = call i32 (...) @GX_End()
  %96 = call i32 (...) @GX_DrawDone()
  br label %97

97:                                               ; preds = %16, %22, %17
  ret void
}

declare dso_local i32 @GX_InitTexObj(i32*, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX_InitTexObjLOD(i32*, i32, i32, double, double, double, i32, i32, i32) #1

declare dso_local i32 @GX_LoadTexObj(i32*, i32) #1

declare dso_local i32 @GX_InvalidateTexAll(...) #1

declare dso_local i32 @GX_Begin(i32, i32, i32) #1

declare dso_local i32 @GX_Position2s16(i64, i64) #1

declare dso_local i32 @GX_Color4u8(i32, i32, i32, i32) #1

declare dso_local i32 @GX_TexCoord2f32(double, double) #1

declare dso_local i32 @GX_End(...) #1

declare dso_local i32 @GX_DrawDone(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
