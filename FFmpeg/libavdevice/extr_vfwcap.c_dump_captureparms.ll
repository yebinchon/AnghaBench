; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_vfwcap.c_dump_captureparms.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_vfwcap.c_dump_captureparms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"CAPTUREPARMS\0A\00", align 1
@dwRequestMicroSecPerFrame = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"lu\00", align 1
@fMakeUserHitOKToCapture = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@wPercentDropForError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@fYield = common dso_local global i32 0, align 4
@dwIndexSize = common dso_local global i32 0, align 4
@wChunkGranularity = common dso_local global i32 0, align 4
@fUsingDOSMemory = common dso_local global i32 0, align 4
@wNumVideoRequested = common dso_local global i32 0, align 4
@fCaptureAudio = common dso_local global i32 0, align 4
@wNumAudioRequested = common dso_local global i32 0, align 4
@vKeyAbort = common dso_local global i32 0, align 4
@fAbortLeftMouse = common dso_local global i32 0, align 4
@fAbortRightMouse = common dso_local global i32 0, align 4
@fLimitEnabled = common dso_local global i32 0, align 4
@wTimeLimit = common dso_local global i32 0, align 4
@fMCIControl = common dso_local global i32 0, align 4
@fStepMCIDevice = common dso_local global i32 0, align 4
@dwMCIStartTime = common dso_local global i32 0, align 4
@dwMCIStopTime = common dso_local global i32 0, align 4
@fStepCaptureAt2x = common dso_local global i32 0, align 4
@wStepCaptureAverageFrames = common dso_local global i32 0, align 4
@dwAudioBufferSize = common dso_local global i32 0, align 4
@fDisableWriteCache = common dso_local global i32 0, align 4
@AVStreamMaster = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @dump_captureparms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_captureparms(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @AV_LOG_DEBUG, align 4
  %7 = call i32 @av_log(i32* %5, i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @dwRequestMicroSecPerFrame, align 4
  %11 = call i32 @dstruct(i32* %8, i32* %9, i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @fMakeUserHitOKToCapture, align 4
  %15 = call i32 @dstruct(i32* %12, i32* %13, i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @wPercentDropForError, align 4
  %19 = call i32 @dstruct(i32* %16, i32* %17, i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @fYield, align 4
  %23 = call i32 @dstruct(i32* %20, i32* %21, i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @dwIndexSize, align 4
  %27 = call i32 @dstruct(i32* %24, i32* %25, i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @wChunkGranularity, align 4
  %31 = call i32 @dstruct(i32* %28, i32* %29, i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @fUsingDOSMemory, align 4
  %35 = call i32 @dstruct(i32* %32, i32* %33, i32 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32*, i32** %3, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @wNumVideoRequested, align 4
  %39 = call i32 @dstruct(i32* %36, i32* %37, i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @fCaptureAudio, align 4
  %43 = call i32 @dstruct(i32* %40, i32* %41, i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @wNumAudioRequested, align 4
  %47 = call i32 @dstruct(i32* %44, i32* %45, i32 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @vKeyAbort, align 4
  %51 = call i32 @dstruct(i32* %48, i32* %49, i32 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32*, i32** %3, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @fAbortLeftMouse, align 4
  %55 = call i32 @dstruct(i32* %52, i32* %53, i32 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32*, i32** %3, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @fAbortRightMouse, align 4
  %59 = call i32 @dstruct(i32* %56, i32* %57, i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32*, i32** %3, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @fLimitEnabled, align 4
  %63 = call i32 @dstruct(i32* %60, i32* %61, i32 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32*, i32** %3, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* @wTimeLimit, align 4
  %67 = call i32 @dstruct(i32* %64, i32* %65, i32 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32*, i32** %3, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @fMCIControl, align 4
  %71 = call i32 @dstruct(i32* %68, i32* %69, i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32*, i32** %3, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @fStepMCIDevice, align 4
  %75 = call i32 @dstruct(i32* %72, i32* %73, i32 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32*, i32** %3, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* @dwMCIStartTime, align 4
  %79 = call i32 @dstruct(i32* %76, i32* %77, i32 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32*, i32** %3, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* @dwMCIStopTime, align 4
  %83 = call i32 @dstruct(i32* %80, i32* %81, i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32*, i32** %3, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* @fStepCaptureAt2x, align 4
  %87 = call i32 @dstruct(i32* %84, i32* %85, i32 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32*, i32** %3, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* @wStepCaptureAverageFrames, align 4
  %91 = call i32 @dstruct(i32* %88, i32* %89, i32 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32*, i32** %3, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* @dwAudioBufferSize, align 4
  %95 = call i32 @dstruct(i32* %92, i32* %93, i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32*, i32** %3, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* @fDisableWriteCache, align 4
  %99 = call i32 @dstruct(i32* %96, i32* %97, i32 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32*, i32** %3, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* @AVStreamMaster, align 4
  %103 = call i32 @dstruct(i32* %100, i32* %101, i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @dstruct(i32*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
