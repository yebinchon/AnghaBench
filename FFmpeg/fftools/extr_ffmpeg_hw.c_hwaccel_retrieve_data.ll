; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_hw.c_hwaccel_retrieve_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_hw.c_hwaccel_retrieve_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to transfer data to output frame: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @hwaccel_retrieve_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwaccel_retrieve_data(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %7, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

22:                                               ; preds = %2
  %23 = call %struct.TYPE_17__* (...) @av_frame_alloc()
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %7, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = icmp ne %struct.TYPE_17__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = call i32 @AVERROR(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %62

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = call i32 @av_hwframe_transfer_data(%struct.TYPE_17__* %33, %struct.TYPE_17__* %34, i32 0)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = load i32, i32* @AV_LOG_ERROR, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @av_log(%struct.TYPE_18__* %39, i32 %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %59

43:                                               ; preds = %29
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = call i32 @av_frame_copy_props(%struct.TYPE_17__* %44, %struct.TYPE_17__* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = call i32 @av_frame_unref(%struct.TYPE_17__* %50)
  br label %59

52:                                               ; preds = %43
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = call i32 @av_frame_unref(%struct.TYPE_17__* %53)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = call i32 @av_frame_move_ref(%struct.TYPE_17__* %55, %struct.TYPE_17__* %56)
  %58 = call i32 @av_frame_free(%struct.TYPE_17__** %7)
  store i32 0, i32* %3, align 4
  br label %62

59:                                               ; preds = %49, %38
  %60 = call i32 @av_frame_free(%struct.TYPE_17__** %7)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %52, %26, %21
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_17__* @av_frame_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_hwframe_transfer_data(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_17__*) #1

declare dso_local i32 @av_frame_move_ref(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_17__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
