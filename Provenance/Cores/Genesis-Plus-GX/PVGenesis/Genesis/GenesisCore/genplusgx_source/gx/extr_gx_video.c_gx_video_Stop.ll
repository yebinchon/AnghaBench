; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gx_video_Stop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gx_video_Stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@sms_ntsc = common dso_local global i32* null, align 8
@md_ntsc = common dso_local global i32* null, align 8
@crosshair = common dso_local global i32* null, align 8
@cd_leds = common dso_local global i32** null, align 8
@vmode = common dso_local global %struct.TYPE_5__* null, align 8
@GX_TRUE = common dso_local global i32 0, align 4
@BLACK = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@VI_MAX_WIDTH_NTSC = common dso_local global i32 0, align 4
@VI_GM_1_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gx_video_Stop() #0 {
  %1 = call i32 (...) @VIDEO_WaitVSync()
  %2 = load i32*, i32** @sms_ntsc, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32*, i32** @sms_ntsc, align 8
  %6 = call i32 @free(i32* %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32*, i32** @md_ntsc, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32*, i32** @md_ntsc, align 8
  %12 = call i32 @free(i32* %11)
  br label %13

13:                                               ; preds = %10, %7
  store i32* null, i32** @sms_ntsc, align 8
  store i32* null, i32** @md_ntsc, align 8
  %14 = load i32*, i32** @crosshair, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = call i32 @gxTextureClose(i32* %15)
  %17 = load i32*, i32** @crosshair, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = call i32 @gxTextureClose(i32* %18)
  %20 = load i32**, i32*** @cd_leds, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = call i32 @gxTextureClose(i32* %23)
  %25 = load i32**, i32*** @cd_leds, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = call i32 @gxTextureClose(i32* %28)
  %30 = load i32**, i32*** @cd_leds, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i32 @gxTextureClose(i32* %33)
  %35 = load i32**, i32*** @cd_leds, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = call i32 @gxTextureClose(i32* %38)
  %40 = call i32 @gxResetRendering(i32 1)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vmode, align 8
  %42 = load i32, i32* @GX_TRUE, align 4
  %43 = call i32 @gxResetMode(%struct.TYPE_5__* %41, i32 %42)
  %44 = load i64, i64* @BLACK, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @gxClearScreen(i32 %45)
  %47 = call i32 @gxDrawScreenshot(i32 255)
  %48 = call i32 @VIDEO_SetPostRetraceCallback(i32* null)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vmode, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @VI_MAX_WIDTH_NTSC, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vmode, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  %57 = sdiv i32 %56, 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vmode, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vmode, align 8
  %61 = call i32 @VIDEO_Configure(%struct.TYPE_5__* %60)
  %62 = call i32 (...) @gxSetScreen()
  ret void
}

declare dso_local i32 @VIDEO_WaitVSync(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @gxTextureClose(i32*) #1

declare dso_local i32 @gxResetRendering(i32) #1

declare dso_local i32 @gxResetMode(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @gxClearScreen(i32) #1

declare dso_local i32 @gxDrawScreenshot(i32) #1

declare dso_local i32 @VIDEO_SetPostRetraceCallback(i32*) #1

declare dso_local i32 @VIDEO_Configure(%struct.TYPE_5__*) #1

declare dso_local i32 @gxSetScreen(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
