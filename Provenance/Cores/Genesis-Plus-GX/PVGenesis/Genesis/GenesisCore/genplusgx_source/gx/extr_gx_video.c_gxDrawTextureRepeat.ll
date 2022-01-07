; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxDrawTextureRepeat.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxDrawTextureRepeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@GX_TF_RGBA8 = common dso_local global i32 0, align 4
@GX_REPEAT = common dso_local global i32 0, align 4
@GX_FALSE = common dso_local global i32 0, align 4
@GX_TEXMAP0 = common dso_local global i32 0, align 4
@vmode = common dso_local global %struct.TYPE_5__* null, align 8
@GX_QUADS = common dso_local global i32 0, align 4
@GX_VTXFMT0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gxDrawTextureRepeat(%struct.TYPE_4__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  br label %111

19:                                               ; preds = %6
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %111

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @GX_TF_RGBA8, align 4
  %35 = load i32, i32* @GX_REPEAT, align 4
  %36 = load i32, i32* @GX_REPEAT, align 4
  %37 = load i32, i32* @GX_FALSE, align 4
  %38 = call i32 @GX_InitTexObj(i32* %13, i64 %27, i64 %30, i64 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @GX_TEXMAP0, align 4
  %40 = call i32 @GX_LoadTexObj(i32* %13, i32 %39)
  %41 = call i32 (...) @GX_InvalidateTexAll()
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vmode, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %8, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %8, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vmode, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %9, align 8
  %55 = sub nsw i64 %54, %53
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = sitofp i64 %56 to double
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sitofp i64 %60 to double
  %62 = fdiv double %57, %61
  store double %62, double* %14, align 8
  %63 = load i64, i64* %11, align 8
  %64 = sitofp i64 %63 to double
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sitofp i64 %67 to double
  %69 = fdiv double %64, %68
  store double %69, double* %15, align 8
  %70 = load i32, i32* @GX_QUADS, align 4
  %71 = load i32, i32* @GX_VTXFMT0, align 4
  %72 = call i32 @GX_Begin(i32 %70, i32 %71, i32 4)
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %11, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @GX_Position2s16(i64 %73, i64 %76)
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 %78)
  %80 = load double, double* %15, align 8
  %81 = call i32 @GX_TexCoord2f32(double 0.000000e+00, double %80)
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %11, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @GX_Position2s16(i64 %84, i64 %87)
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 %89)
  %91 = load double, double* %14, align 8
  %92 = load double, double* %15, align 8
  %93 = call i32 @GX_TexCoord2f32(double %91, double %92)
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* %10, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @GX_Position2s16(i64 %96, i64 %97)
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 %99)
  %101 = load double, double* %14, align 8
  %102 = call i32 @GX_TexCoord2f32(double %101, double 0.000000e+00)
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %9, align 8
  %105 = call i32 @GX_Position2s16(i64 %103, i64 %104)
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 %106)
  %108 = call i32 @GX_TexCoord2f32(double 0.000000e+00, double 0.000000e+00)
  %109 = call i32 (...) @GX_End()
  %110 = call i32 (...) @GX_DrawDone()
  br label %111

111:                                              ; preds = %18, %24, %19
  ret void
}

declare dso_local i32 @GX_InitTexObj(i32*, i64, i64, i64, i32, i32, i32, i32) #1

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
