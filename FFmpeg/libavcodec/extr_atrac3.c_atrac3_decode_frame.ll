; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3.c_atrac3_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3.c_atrac3_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, i64 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { i64, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Frame too small (%d bytes). Truncated file?\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@SAMPLES_PER_FRAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Frame decoding error!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32*, %struct.TYPE_11__*)* @atrac3_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atrac3_decode_frame(%struct.TYPE_13__* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %10, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %13, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %33, i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %37, i32* %5, align 4
  br label %87

38:                                               ; preds = %4
  %39 = load i32, i32* @SAMPLES_PER_FRAME, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %44 = call i32 @ff_get_buffer(%struct.TYPE_13__* %42, %struct.TYPE_12__* %43, i32 0)
  store i32 %44, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %5, align 4
  br label %87

48:                                               ; preds = %38
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @decode_bytes(i32* %54, i32* %57, i32 %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %15, align 8
  br label %67

65:                                               ; preds = %48
  %66 = load i32*, i32** %11, align 8
  store i32* %66, i32** %15, align 8
  br label %67

67:                                               ; preds = %65, %53
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to float**
  %74 = call i32 @decode_frame(%struct.TYPE_13__* %68, i32* %69, float** %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = load i32, i32* @AV_LOG_ERROR, align 4
  %80 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %78, i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %5, align 4
  br label %87

82:                                               ; preds = %67
  %83 = load i32*, i32** %8, align 8
  store i32 1, i32* %83, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %82, %77, %46, %32
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @decode_bytes(i32*, i32*, i32) #1

declare dso_local i32 @decode_frame(%struct.TYPE_13__*, i32*, float**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
