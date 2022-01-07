; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_yui.c_Java_org_yabause_android_YabauseRunnable_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_yui.c_Java_org_yabause_android_YabauseRunnable_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__**, i32)* }
%struct.TYPE_7__ = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@yabause = common dso_local global i32 0, align 4
@M68KCORE_C68K = common dso_local global i32 0, align 4
@PERCORE_DUMMY = common dso_local global i32 0, align 4
@SH2CORE_DEFAULT = common dso_local global i32 0, align 4
@VIDCORE_SOFT = common dso_local global i32 0, align 4
@SNDCORE_AUDIOTRACK = common dso_local global i32 0, align 4
@CDCORE_ISO = common dso_local global i32 0, align 4
@mpegpath = common dso_local global i32 0, align 4
@VIDEOFORMATTYPE_NTSC = common dso_local global i32 0, align 4
@OSDCORE_SOFT = common dso_local global i32 0, align 4
@PORTDATA1 = common dso_local global i32 0, align 4
@PERPAD_UP = common dso_local global i32 0, align 4
@PERPAD_RIGHT = common dso_local global i32 0, align 4
@PERPAD_DOWN = common dso_local global i32 0, align 4
@PERPAD_LEFT = common dso_local global i32 0, align 4
@PERPAD_START = common dso_local global i32 0, align 4
@PERPAD_A = common dso_local global i32 0, align 4
@PERPAD_B = common dso_local global i32 0, align 4
@PERPAD_C = common dso_local global i32 0, align 4
@PERPAD_X = common dso_local global i32 0, align 4
@PERPAD_Y = common dso_local global i32 0, align 4
@PERPAD_Z = common dso_local global i32 0, align 4
@SNDCORE_OPENSL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Java_org_yabause_android_YabauseRunnable_init(%struct.TYPE_8__** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = call i32 (...) @initEGLFunc()
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %103

14:                                               ; preds = %3
  %15 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_8__**, i32)*, i32 (%struct.TYPE_8__**, i32)** %17, align 8
  %19 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 %18(%struct.TYPE_8__** %19, i32 %20)
  store i32 %21, i32* @yabause, align 4
  %22 = call i32 @memset(%struct.TYPE_7__* %8, i32 0, i32 80)
  %23 = load i32, i32* @M68KCORE_C68K, align 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 15
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @PERCORE_DUMMY, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 14
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* @SH2CORE_DEFAULT, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @VIDCORE_SOFT, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 13
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @SNDCORE_AUDIOTRACK, align 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 12
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @CDCORE_ISO, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 11
  store i32 %33, i32* %34, align 4
  %35 = call i32 (...) @GetCartridgeType()
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 10
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 9
  store i64 0, i64* %37, align 8
  %38 = call i32 (...) @GetBiosPath()
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 8
  store i32 %38, i32* %39, align 4
  %40 = call i32 (...) @GetGamePath()
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 7
  store i32 %40, i32* %41, align 8
  %42 = call i32 (...) @GetMemoryPath()
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 6
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @mpegpath, align 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  store i32 %44, i32* %45, align 8
  %46 = call i32 (...) @GetCartridgePath()
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @VIDEOFORMATTYPE_NTSC, align 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = call i32 @YabauseInit(%struct.TYPE_7__* %8)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @OSDCORE_SOFT, align 4
  %54 = call i32 @OSDChangeCore(i32 %53)
  %55 = call i32 (...) @PerPortReset()
  %56 = call i8* @PerPadAdd(i32* @PORTDATA1)
  store i8* %56, i8** %10, align 8
  %57 = load i32, i32* @PERPAD_UP, align 4
  %58 = load i32, i32* @PERPAD_UP, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @PerSetKey(i32 %57, i32 %58, i8* %59)
  %61 = load i32, i32* @PERPAD_RIGHT, align 4
  %62 = load i32, i32* @PERPAD_RIGHT, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @PerSetKey(i32 %61, i32 %62, i8* %63)
  %65 = load i32, i32* @PERPAD_DOWN, align 4
  %66 = load i32, i32* @PERPAD_DOWN, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @PerSetKey(i32 %65, i32 %66, i8* %67)
  %69 = load i32, i32* @PERPAD_LEFT, align 4
  %70 = load i32, i32* @PERPAD_LEFT, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @PerSetKey(i32 %69, i32 %70, i8* %71)
  %73 = load i32, i32* @PERPAD_START, align 4
  %74 = load i32, i32* @PERPAD_START, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @PerSetKey(i32 %73, i32 %74, i8* %75)
  %77 = load i32, i32* @PERPAD_A, align 4
  %78 = load i32, i32* @PERPAD_A, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @PerSetKey(i32 %77, i32 %78, i8* %79)
  %81 = load i32, i32* @PERPAD_B, align 4
  %82 = load i32, i32* @PERPAD_B, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @PerSetKey(i32 %81, i32 %82, i8* %83)
  %85 = load i32, i32* @PERPAD_C, align 4
  %86 = load i32, i32* @PERPAD_C, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @PerSetKey(i32 %85, i32 %86, i8* %87)
  %89 = load i32, i32* @PERPAD_X, align 4
  %90 = load i32, i32* @PERPAD_X, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @PerSetKey(i32 %89, i32 %90, i8* %91)
  %93 = load i32, i32* @PERPAD_Y, align 4
  %94 = load i32, i32* @PERPAD_Y, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @PerSetKey(i32 %93, i32 %94, i8* %95)
  %97 = load i32, i32* @PERPAD_Z, align 4
  %98 = load i32, i32* @PERPAD_Z, align 4
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @PerSetKey(i32 %97, i32 %98, i8* %99)
  %101 = call i32 @ScspSetFrameAccurate(i32 1)
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %14, %13
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @initEGLFunc(...) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @GetCartridgeType(...) #1

declare dso_local i32 @GetBiosPath(...) #1

declare dso_local i32 @GetGamePath(...) #1

declare dso_local i32 @GetMemoryPath(...) #1

declare dso_local i32 @GetCartridgePath(...) #1

declare dso_local i32 @YabauseInit(%struct.TYPE_7__*) #1

declare dso_local i32 @OSDChangeCore(i32) #1

declare dso_local i32 @PerPortReset(...) #1

declare dso_local i8* @PerPadAdd(i32*) #1

declare dso_local i32 @PerSetKey(i32, i32, i8*) #1

declare dso_local i32 @ScspSetFrameAccurate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
