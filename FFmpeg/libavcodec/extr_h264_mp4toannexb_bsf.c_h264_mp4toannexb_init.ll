; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_mp4toannexb_bsf.c_h264_mp4toannexb_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_mp4toannexb_bsf.c_h264_mp4toannexb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i64 }

@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"The input looks like it is Annex B already\0A\00", align 1
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid extradata size: %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @h264_mp4toannexb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_mp4toannexb_init(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 3
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @AV_RB24(i32 %25)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %39, label %28

28:                                               ; preds = %20, %17
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %29, 4
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @AV_RB32(i32 %36)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %31, %20, %1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %42 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %40, i32 %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %73

43:                                               ; preds = %31, %28
  %44 = load i32, i32* %5, align 4
  %45 = icmp sge i32 %44, 6
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %49 = call i32 @h264_extradata_to_annexb(%struct.TYPE_9__* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %74

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  br label %72

66:                                               ; preds = %43
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = load i32, i32* @AV_LOG_ERROR, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %67, i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %71, i32* %2, align 4
  br label %74

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72, %39
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %66, %52
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @AV_RB24(i32) #1

declare dso_local i32 @AV_RB32(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @h264_extradata_to_annexb(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
