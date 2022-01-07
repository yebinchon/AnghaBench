; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_dxva2.c_dxva2_frames_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_dxva2.c_dxva2_frames_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@DXVA2_VideoDecoderRenderTarget = common dso_local global i64 0, align 8
@DXVA2_VideoProcessorRenderTarget = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unknown surface type: %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Error creating an internal frame pool\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @dxva2_frames_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxva2_frames_init(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %5, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DXVA2_VideoDecoderRenderTarget, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DXVA2_VideoProcessorRenderTarget, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = load i32, i32* @AV_LOG_ERROR, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %27, i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %55

35:                                               ; preds = %20, %1
  %36 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = call i32 @dxva2_init_pool(%struct.TYPE_10__* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %49, i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %35
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %48, %26
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @dxva2_init_pool(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
