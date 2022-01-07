; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hwupload.c_hwupload_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hwupload.c_hwupload_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_16__** }
%struct.TYPE_15__ = type { i64, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate frame to upload to.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to upload frame: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @hwupload_filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwupload_filter_frame(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %16, i64 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %7, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = call i32 @ff_filter_frame(%struct.TYPE_16__* %30, %struct.TYPE_15__* %31)
  store i32 %32, i32* %3, align 4
  br label %87

33:                                               ; preds = %2
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_15__* @ff_get_video_buffer(%struct.TYPE_16__* %34, i32 %37, i32 %40)
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %9, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %43 = icmp ne %struct.TYPE_15__* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %33
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* @AV_LOG_ERROR, align 4
  %47 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %45, i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %10, align 4
  br label %83

50:                                               ; preds = %33
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = call i32 @av_hwframe_transfer_data(%struct.TYPE_15__* %61, %struct.TYPE_15__* %62, i32 0)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %50
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* @AV_LOG_ERROR, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %67, i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %83

71:                                               ; preds = %50
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = call i32 @av_frame_copy_props(%struct.TYPE_15__* %72, %struct.TYPE_15__* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %83

78:                                               ; preds = %71
  %79 = call i32 @av_frame_free(%struct.TYPE_15__** %5)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %82 = call i32 @ff_filter_frame(%struct.TYPE_16__* %80, %struct.TYPE_15__* %81)
  store i32 %82, i32* %3, align 4
  br label %87

83:                                               ; preds = %77, %66, %44
  %84 = call i32 @av_frame_free(%struct.TYPE_15__** %5)
  %85 = call i32 @av_frame_free(%struct.TYPE_15__** %9)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %78, %29
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @ff_filter_frame(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @ff_get_video_buffer(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_hwframe_transfer_data(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_15__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
