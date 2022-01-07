; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxCopyScreenshot.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxCopyScreenshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@texturemem = common dso_local global i32 0, align 4
@vwidth = common dso_local global i32 0, align 4
@vheight = common dso_local global i32 0, align 4
@GX_TF_RGB565 = common dso_local global i32 0, align 4
@GX_CLAMP = common dso_local global i32 0, align 4
@GX_FALSE = common dso_local global i32 0, align 4
@GX_TEXMAP0 = common dso_local global i32 0, align 4
@bitmap = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@BLACK = common dso_local global i64 0, align 8
@GX_QUADS = common dso_local global i32 0, align 4
@GX_VTXFMT0 = common dso_local global i32 0, align 4
@GX_TF_RGBA8 = common dso_local global i32 0, align 4
@screenshot = common dso_local global i32 0, align 4
@GX_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gxCopyScreenshot(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load i32, i32* @texturemem, align 4
  %9 = load i32, i32* @vwidth, align 4
  %10 = load i32, i32* @vheight, align 4
  %11 = load i32, i32* @GX_TF_RGB565, align 4
  %12 = load i32, i32* @GX_CLAMP, align 4
  %13 = load i32, i32* @GX_CLAMP, align 4
  %14 = load i32, i32* @GX_FALSE, align 4
  %15 = call i32 @GX_InitTexObj(i32* %3, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* @GX_TEXMAP0, align 4
  %17 = call i32 @GX_LoadTexObj(i32* %3, i32 %16)
  %18 = call i32 (...) @GX_InvalidateTexAll()
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bitmap, i32 0, i32 0, i32 0), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bitmap, i32 0, i32 0, i32 1), align 4
  %21 = mul nsw i32 2, %20
  %22 = add nsw i32 %19, %21
  %23 = mul nsw i32 %22, 640
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bitmap, i32 0, i32 0, i32 0), align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bitmap, i32 0, i32 0, i32 2), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bitmap, i32 0, i32 0, i32 3), align 4
  %28 = mul nsw i32 2, %27
  %29 = add nsw i32 %26, %28
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 0, %31
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bitmap, i32 0, i32 0, i32 3), align 4
  %35 = mul nsw i32 2, %34
  %36 = add nsw i32 240, %35
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 640
  br i1 %39, label %43, label %40

40:                                               ; preds = %1
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 480
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %1
  %44 = load i64, i64* @BLACK, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @gxDrawRectangle(i32 0, i32 0, i32 640, i32 480, i32 255, i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* @GX_QUADS, align 4
  %49 = load i32, i32* @GX_VTXFMT0, align 4
  %50 = call i32 @GX_Begin(i32 %48, i32 %49, i32 4)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @GX_Position2s16(i32 %51, i32 %54)
  %56 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 255)
  %57 = call i32 @GX_TexCoord2f32(double 0.000000e+00, double 1.000000e+00)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i32 @GX_Position2s16(i32 %60, i32 %63)
  %65 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 255)
  %66 = call i32 @GX_TexCoord2f32(double 1.000000e+00, double 1.000000e+00)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @GX_Position2s16(i32 %69, i32 %70)
  %72 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 255)
  %73 = call i32 @GX_TexCoord2f32(double 1.000000e+00, double 0.000000e+00)
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @GX_Position2s16(i32 %74, i32 %75)
  %77 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 255)
  %78 = call i32 @GX_TexCoord2f32(double 0.000000e+00, double 0.000000e+00)
  %79 = call i32 (...) @GX_End()
  %80 = load i32, i32* @GX_TF_RGBA8, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 320, i32* %84, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bitmap, i32 0, i32 0, i32 2), align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @screenshot, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %93, 2
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %97, 2
  %99 = call i32 @GX_SetTexCopySrc(i32 0, i32 0, i32 %94, i32 %98)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @GX_TRUE, align 4
  %110 = call i32 @GX_SetTexCopyDst(i32 %102, i32 %105, i32 %108, i32 %109)
  %111 = call i32 (...) @GX_DrawDone()
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @GX_TRUE, align 4
  %116 = call i32 @GX_CopyTex(i32 %114, i32 %115)
  %117 = call i32 (...) @GX_Flush()
  %118 = call i32 (...) @GX_PixModeSync()
  %119 = load i32, i32* @GX_TEXMAP0, align 4
  %120 = call i32 @GX_LoadTexObj(i32* %3, i32 %119)
  %121 = call i32 (...) @GX_InvalidateTexAll()
  %122 = call i32 (...) @GX_Flush()
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %128, %131
  %133 = mul nsw i32 %132, 4
  %134 = call i32 @DCFlushRange(i32 %125, i32 %133)
  ret void
}

declare dso_local i32 @GX_InitTexObj(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX_LoadTexObj(i32*, i32) #1

declare dso_local i32 @GX_InvalidateTexAll(...) #1

declare dso_local i32 @gxDrawRectangle(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX_Begin(i32, i32, i32) #1

declare dso_local i32 @GX_Position2s16(i32, i32) #1

declare dso_local i32 @GX_Color4u8(i32, i32, i32, i32) #1

declare dso_local i32 @GX_TexCoord2f32(double, double) #1

declare dso_local i32 @GX_End(...) #1

declare dso_local i32 @GX_SetTexCopySrc(i32, i32, i32, i32) #1

declare dso_local i32 @GX_SetTexCopyDst(i32, i32, i32, i32) #1

declare dso_local i32 @GX_DrawDone(...) #1

declare dso_local i32 @GX_CopyTex(i32, i32) #1

declare dso_local i32 @GX_Flush(...) #1

declare dso_local i32 @GX_PixModeSync(...) #1

declare dso_local i32 @DCFlushRange(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
