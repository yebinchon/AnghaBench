; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_videotoolbox.c_videotoolbox_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_videotoolbox.c_videotoolbox_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, {}*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@HWACCEL_AUTO = common dso_local global i64 0, align 8
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@videotoolbox_retrieve_data = common dso_local global i32 0, align 4
@videotoolbox_pixfmt = common dso_local global i32 0, align 4
@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFStringEncodingUTF8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [117 x i8] c"UTGetOSTypeFromString() is not available on this platform, %s pixel format can not be honored from the command line\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Error creating Videotoolbox decoder.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videotoolbox_init(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %4, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HWACCEL_AUTO, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @AV_LOG_VERBOSE, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @AV_LOG_ERROR, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %24 = call %struct.TYPE_13__* @av_mallocz(i32 4)
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %7, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = icmp ne %struct.TYPE_13__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %82

30:                                               ; preds = %22
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 3
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %33, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = bitcast {}** %35 to i32 (%struct.TYPE_16__*)**
  store i32 (%struct.TYPE_16__*)* @videotoolbox_uninit, i32 (%struct.TYPE_16__*)** %36, align 8
  %37 = load i32, i32* @videotoolbox_retrieve_data, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = call i32 (...) @av_frame_alloc()
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %30
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %6, align 4
  br label %78

50:                                               ; preds = %30
  %51 = load i32, i32* @videotoolbox_pixfmt, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = call i32 @av_videotoolbox_default_init(%struct.TYPE_16__* %54)
  store i32 %55, i32* %6, align 4
  br label %71

56:                                               ; preds = %50
  %57 = call %struct.TYPE_15__* (...) @av_videotoolbox_alloc_context()
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %8, align 8
  %58 = load i32, i32* @kCFAllocatorDefault, align 4
  %59 = load i32, i32* @videotoolbox_pixfmt, align 4
  %60 = load i32, i32* @kCFStringEncodingUTF8, align 4
  %61 = call i32 @CFStringCreateWithCString(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @videotoolbox_pixfmt, align 4
  %65 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %62, i32 %63, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %68 = call i32 @av_videotoolbox_default_init2(%struct.TYPE_16__* %66, %struct.TYPE_15__* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @CFRelease(i32 %69)
  br label %71

71:                                               ; preds = %56, %53
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* null, i32 %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %78

77:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %82

78:                                               ; preds = %74, %47
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = call i32 @videotoolbox_uninit(%struct.TYPE_16__* %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %77, %27
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_13__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @videotoolbox_uninit(%struct.TYPE_16__*) #1

declare dso_local i32 @av_frame_alloc(...) #1

declare dso_local i32 @av_videotoolbox_default_init(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @av_videotoolbox_alloc_context(...) #1

declare dso_local i32 @CFStringCreateWithCString(i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @av_videotoolbox_default_init2(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @CFRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
