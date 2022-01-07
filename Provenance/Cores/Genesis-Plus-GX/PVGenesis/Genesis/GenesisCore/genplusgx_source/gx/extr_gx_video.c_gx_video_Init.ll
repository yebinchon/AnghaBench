; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gx_video_Init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gx_video_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_10__ = type { i8* }

@vmode = common dso_local global %struct.TYPE_9__* null, align 8
@VI_TVMODE_EURGB60_DS = common dso_local global i8* null, align 8
@TV60hz_240p = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@VI_TVMODE_EURGB60_INT = common dso_local global i8* null, align 8
@TV60hz_240i = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@TV60hz_480i = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@VI_NON_INTERLACE = common dso_local global i32 0, align 4
@VI_INTERLACE = common dso_local global i32 0, align 4
@TV50hz_576i = common dso_local global i32 0, align 4
@xfb = common dso_local global i32** null, align 8
@COLOR_BLACK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GX_TRUE = common dso_local global i32 0, align 4
@TEX_SIZE = common dso_local global i32 0, align 4
@texturemem = common dso_local global i8* null, align 8
@HASPECT = common dso_local global i32 0, align 4
@VASPECT = common dso_local global i32 0, align 4
@screenshot = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gx_video_Init() #0 {
  %1 = call i32 (...) @VIDEO_Init()
  %2 = call %struct.TYPE_9__* @VIDEO_GetPreferredMode(i32* null)
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** @vmode, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vmode, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = ashr i32 %5, 2
  switch i32 %6, label %11 [
    i32 128, label %7
  ]

7:                                                ; preds = %0
  %8 = load i8*, i8** @VI_TVMODE_EURGB60_DS, align 8
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @TV60hz_240p, i32 0, i32 0), align 8
  %9 = load i8*, i8** @VI_TVMODE_EURGB60_INT, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @TV60hz_240i, i32 0, i32 0), align 8
  %10 = load i8*, i8** @VI_TVMODE_EURGB60_INT, align 8
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @TV60hz_480i, i32 0, i32 0), align 8
  br label %30

11:                                               ; preds = %0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vmode, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 2
  %16 = load i32, i32* @VI_NON_INTERLACE, align 4
  %17 = call i8* @VI_TVMODE(i32 %15, i32 %16)
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @TV60hz_240p, i32 0, i32 0), align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vmode, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 2
  %22 = load i32, i32* @VI_INTERLACE, align 4
  %23 = call i8* @VI_TVMODE(i32 %21, i32 %22)
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @TV60hz_240i, i32 0, i32 0), align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vmode, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 2
  %28 = load i32, i32* @VI_INTERLACE, align 4
  %29 = call i8* @VI_TVMODE(i32 %27, i32 %28)
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @TV60hz_480i, i32 0, i32 0), align 8
  br label %30

30:                                               ; preds = %11, %7
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vmode, align 8
  %32 = call i32 @VIDEO_Configure(%struct.TYPE_9__* %31)
  %33 = call i64 @SYS_AllocateFramebuffer(i32* @TV50hz_576i)
  %34 = inttoptr i64 %33 to i32*
  %35 = call i64 @MEM_K0_TO_K1(i32* %34)
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32**, i32*** @xfb, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  store i32* %36, i32** %38, align 8
  %39 = call i64 @SYS_AllocateFramebuffer(i32* @TV50hz_576i)
  %40 = inttoptr i64 %39 to i32*
  %41 = call i64 @MEM_K0_TO_K1(i32* %40)
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32**, i32*** @xfb, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  store i32* %42, i32** %44, align 8
  %45 = load i32**, i32*** @xfb, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @console_init(i32* %47, i32 20, i32 64, i32 640, i32 574, i32 1148)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vmode, align 8
  %50 = load i32**, i32*** @xfb, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @COLOR_BLACK, align 4
  %54 = call i32 @VIDEO_ClearFrameBuffer(%struct.TYPE_9__* %49, i32* %52, i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vmode, align 8
  %56 = load i32**, i32*** @xfb, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @COLOR_BLACK, align 4
  %60 = call i32 @VIDEO_ClearFrameBuffer(%struct.TYPE_9__* %55, i32* %58, i32 %59)
  %61 = load i32**, i32*** @xfb, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @VIDEO_SetNextFramebuffer(i32* %63)
  %65 = load i32, i32* @FALSE, align 4
  %66 = call i32 @VIDEO_SetBlack(i32 %65)
  %67 = call i32 (...) @VIDEO_Flush()
  %68 = call i32 (...) @VIDEO_WaitVSync()
  %69 = call i32 (...) @VIDEO_WaitVSync()
  %70 = call i32 (...) @gxStart()
  %71 = call i32 @gxResetRendering(i32 1)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vmode, align 8
  %73 = load i32, i32* @GX_TRUE, align 4
  %74 = call i32 @gxResetMode(%struct.TYPE_9__* %72, i32 %73)
  %75 = call i32 (...) @FONT_Init()
  %76 = load i32, i32* @TEX_SIZE, align 4
  %77 = call i8* @memalign(i32 32, i32 %76)
  store i8* %77, i8** @texturemem, align 8
  %78 = load i32, i32* @HASPECT, align 4
  %79 = load i32, i32* @VASPECT, align 4
  %80 = mul nsw i32 %78, %79
  %81 = mul nsw i32 %80, 4
  %82 = call i8* @memalign(i32 32, i32 %81)
  store i8* %82, i8** @screenshot, align 8
  ret void
}

declare dso_local i32 @VIDEO_Init(...) #1

declare dso_local %struct.TYPE_9__* @VIDEO_GetPreferredMode(i32*) #1

declare dso_local i8* @VI_TVMODE(i32, i32) #1

declare dso_local i32 @VIDEO_Configure(%struct.TYPE_9__*) #1

declare dso_local i64 @MEM_K0_TO_K1(i32*) #1

declare dso_local i64 @SYS_AllocateFramebuffer(i32*) #1

declare dso_local i32 @console_init(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VIDEO_ClearFrameBuffer(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @VIDEO_SetNextFramebuffer(i32*) #1

declare dso_local i32 @VIDEO_SetBlack(i32) #1

declare dso_local i32 @VIDEO_Flush(...) #1

declare dso_local i32 @VIDEO_WaitVSync(...) #1

declare dso_local i32 @gxStart(...) #1

declare dso_local i32 @gxResetRendering(i32) #1

declare dso_local i32 @gxResetMode(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @FONT_Init(...) #1

declare dso_local i8* @memalign(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
