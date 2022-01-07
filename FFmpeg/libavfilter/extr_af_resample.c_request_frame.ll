; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_resample.c_request_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_resample.c_request_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i32*, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @request_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_frame(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %28, %1
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  br i1 %27, label %28, label %35

28:                                               ; preds = %26
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ff_request_frame(i32 %33)
  store i32 %34, i32* %6, align 4
  br label %17

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @AVERROR_EOF, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %100

39:                                               ; preds = %35
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %100

44:                                               ; preds = %39
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @avresample_get_out_samples(i64 %47, i32 0)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %102

53:                                               ; preds = %44
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call %struct.TYPE_12__* @ff_get_audio_buffer(%struct.TYPE_13__* %54, i32 %55)
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %7, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = icmp ne %struct.TYPE_12__* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %2, align 4
  br label %102

62:                                               ; preds = %53
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @avresample_convert(i64 %65, i32 %68, i32 %73, i32 %74, i32* null, i32 0, i32 0)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %62
  %79 = call i32 @av_frame_free(%struct.TYPE_12__** %7)
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @AVERROR_EOF, align 4
  br label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  store i32 %87, i32* %2, align 4
  br label %102

88:                                               ; preds = %62
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = call i32 @ff_filter_frame(%struct.TYPE_13__* %97, %struct.TYPE_12__* %98)
  store i32 %99, i32* %2, align 4
  br label %102

100:                                              ; preds = %39, %35
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %88, %86, %59, %51
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @ff_request_frame(i32) #1

declare dso_local i32 @avresample_get_out_samples(i64, i32) #1

declare dso_local %struct.TYPE_12__* @ff_get_audio_buffer(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avresample_convert(i64, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_12__**) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
