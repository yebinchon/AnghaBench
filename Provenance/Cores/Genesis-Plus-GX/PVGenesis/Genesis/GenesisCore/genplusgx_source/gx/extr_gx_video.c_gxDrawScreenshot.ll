; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxDrawScreenshot.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxDrawScreenshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@rmode = common dso_local global i32 0, align 4
@texturemem = common dso_local global i32 0, align 4
@vwidth = common dso_local global i32 0, align 4
@vheight = common dso_local global i32 0, align 4
@GX_TF_RGB565 = common dso_local global i32 0, align 4
@GX_CLAMP = common dso_local global i32 0, align 4
@GX_FALSE = common dso_local global i32 0, align 4
@GX_TEXMAP0 = common dso_local global i32 0, align 4
@vmode = common dso_local global %struct.TYPE_3__* null, align 8
@config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@BLACK = common dso_local global i64 0, align 8
@GX_QUADS = common dso_local global i32 0, align 4
@GX_VTXFMT0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gxDrawScreenshot(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* @rmode, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %113

15:                                               ; preds = %1
  %16 = load i32, i32* @texturemem, align 4
  %17 = load i32, i32* @vwidth, align 4
  %18 = load i32, i32* @vheight, align 4
  %19 = load i32, i32* @GX_TF_RGB565, align 4
  %20 = load i32, i32* @GX_CLAMP, align 4
  %21 = load i32, i32* @GX_CLAMP, align 4
  %22 = load i32, i32* @GX_FALSE, align 4
  %23 = call i32 @GX_InitTexObj(i32* %3, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* @GX_TEXMAP0, align 4
  %25 = call i32 @GX_LoadTexObj(i32* %3, i32 %24)
  %26 = call i32 (...) @GX_InvalidateTexAll()
  %27 = call i32 @gxSetAspectRatio(i32* %4, i32* %5)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vmode, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vmode, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %32, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0), align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vmode, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vmode, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %41, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 1), align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vmode, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vmode, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %50, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 %59, 2
  %61 = sub nsw i32 %58, %60
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %4, align 4
  %63 = mul nsw i32 %62, 2
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %5, align 4
  %65 = mul nsw i32 %64, 4
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 640
  br i1 %67, label %71, label %68

68:                                               ; preds = %15
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 480
  br i1 %70, label %71, label %75

71:                                               ; preds = %68, %15
  %72 = load i64, i64* @BLACK, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @gxDrawRectangle(i32 0, i32 0, i32 640, i32 480, i32 255, i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* @GX_QUADS, align 4
  %77 = load i32, i32* @GX_VTXFMT0, align 4
  %78 = call i32 @GX_Begin(i32 %76, i32 %77, i32 4)
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i32 @GX_Position2s16(i32 %79, i32 %82)
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 %84)
  %86 = call i32 @GX_TexCoord2f32(double 0.000000e+00, double 1.000000e+00)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %90, %91
  %93 = call i32 @GX_Position2s16(i32 %89, i32 %92)
  %94 = load i32, i32* %2, align 4
  %95 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 %94)
  %96 = call i32 @GX_TexCoord2f32(double 1.000000e+00, double 1.000000e+00)
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @GX_Position2s16(i32 %99, i32 %100)
  %102 = load i32, i32* %2, align 4
  %103 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 %102)
  %104 = call i32 @GX_TexCoord2f32(double 1.000000e+00, double 0.000000e+00)
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @GX_Position2s16(i32 %105, i32 %106)
  %108 = load i32, i32* %2, align 4
  %109 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 %108)
  %110 = call i32 @GX_TexCoord2f32(double 0.000000e+00, double 0.000000e+00)
  %111 = call i32 (...) @GX_End()
  %112 = call i32 (...) @GX_DrawDone()
  br label %113

113:                                              ; preds = %75, %14
  ret void
}

declare dso_local i32 @GX_InitTexObj(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX_LoadTexObj(i32*, i32) #1

declare dso_local i32 @GX_InvalidateTexAll(...) #1

declare dso_local i32 @gxSetAspectRatio(i32*, i32*) #1

declare dso_local i32 @gxDrawRectangle(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX_Begin(i32, i32, i32) #1

declare dso_local i32 @GX_Position2s16(i32, i32) #1

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
