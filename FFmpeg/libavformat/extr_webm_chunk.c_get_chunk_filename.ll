; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_webm_chunk.c_get_chunk_filename.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_webm_chunk.c_get_chunk_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_6__* }

@MAX_FILENAME_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No header filename provided\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Header filename too long\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid chunk filename template '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i8*)* @get_chunk_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_chunk_filename(%struct.TYPE_6__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @MAX_FILENAME_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %8, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %4, align 4
  br label %78

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %24
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %33, i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %78

38:                                               ; preds = %27
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MAX_FILENAME_SIZE, align 4
  %44 = call i32 @av_strlcpy(i8* %39, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @MAX_FILENAME_SIZE, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %49, i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = call i32 @AVERROR(i32 %52)
  store i32 %53, i32* %4, align 4
  br label %78

54:                                               ; preds = %38
  br label %77

55:                                               ; preds = %24
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* @MAX_FILENAME_SIZE, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, 1
  %65 = call i64 @av_get_frame_filename(i8* %56, i32 %57, i32 %60, i64 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %55
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %69 = load i32, i32* @AV_LOG_ERROR, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %68, i32 %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = call i32 @AVERROR(i32 %74)
  store i32 %75, i32* %4, align 4
  br label %78

76:                                               ; preds = %55
  br label %77

77:                                               ; preds = %76, %54
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %67, %48, %32, %21
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @av_strlcpy(i8*, i32, i32) #1

declare dso_local i64 @av_get_frame_filename(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
