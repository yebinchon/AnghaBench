; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avisynth.c_avisynth_open_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avisynth.c_avisynth_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32, i32)*, i32 (i32, i8*, i32, i32)* }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@avs_library = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"Import\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"AviSynth script did not return a clip\0A\00", align 1
@CP_THREAD_ACP = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @avisynth_open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avisynth_open_file(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i32 @avisynth_context_create(%struct.TYPE_10__* %11)
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %74

16:                                               ; preds = %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @avs_new_value_string(i8* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @avs_library, i32 0, i32 4), align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 %21(i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %25, i32 0)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @avs_is_error(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %16
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = load i32, i32* @AV_LOG_ERROR, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @avs_as_error(i32 %33)
  %35 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %31, i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %36, i32* %7, align 4
  br label %70

37:                                               ; preds = %16
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @avs_is_clip(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %42, i32 %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %45, i32* %7, align 4
  br label %70

46:                                               ; preds = %37
  %47 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @avs_library, i32 0, i32 3), align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %47(i32 %48, i32 %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @avs_library, i32 0, i32 2), align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 %55(i32 %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @avs_library, i32 0, i32 1), align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 %62(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = call i32 @avisynth_create_stream(%struct.TYPE_10__* %65)
  store i32 %66, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %46
  br label %70

69:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %74

70:                                               ; preds = %68, %41, %30
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = call i32 @avisynth_context_destroy(%struct.TYPE_9__* %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %69, %14
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @avisynth_context_create(%struct.TYPE_10__*) #1

declare dso_local i32 @avs_new_value_string(i8*) #1

declare dso_local i64 @avs_is_error(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @avs_as_error(i32) #1

declare dso_local i32 @avs_is_clip(i32) #1

declare dso_local i32 @avisynth_create_stream(%struct.TYPE_10__*) #1

declare dso_local i32 @avisynth_context_destroy(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
