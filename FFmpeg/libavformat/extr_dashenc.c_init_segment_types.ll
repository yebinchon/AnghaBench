; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_init_segment_types.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_init_segment_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_9__**, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Could not select DASH segment type for stream %d\0A\00", align 1
@AVERROR_MUXER_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Could not get extension type for stream %d\0A\00", align 1
@SEGMENT_TYPE_MP4 = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"No mp4 streams, disabling HLS manifest generation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @init_segment_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_segment_types(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %82, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %85

18:                                               ; preds = %12
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i64 %23
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %7, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %30, i64 %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @select_segment_type(i32 %27, i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @get_format_str(i64 %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %18
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %52, i32 %53, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @AVERROR_MUXER_NOT_FOUND, align 4
  store i32 %56, i32* %2, align 4
  br label %100

57:                                               ; preds = %18
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @get_extension_str(i64 %58, i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %57
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %70, i32 %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @AVERROR_MUXER_NOT_FOUND, align 4
  store i32 %74, i32* %2, align 4
  br label %100

75:                                               ; preds = %57
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @SEGMENT_TYPE_MP4, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %12

85:                                               ; preds = %12
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %95 = load i32, i32* @AV_LOG_WARNING, align 4
  %96 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %94, i32 %95, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %93, %90, %85
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %69, %51
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i64 @select_segment_type(i32, i32) #1

declare dso_local i32 @get_format_str(i64) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32 @get_extension_str(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
