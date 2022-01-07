; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_asetnsamples.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_asetnsamples.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32**, i32** }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FFERROR_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %12 = load i32**, i32*** %11, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i32**, i32*** %16, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %5, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @FF_FILTER_FORWARD_STATUS_BACK(i32* %23, i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @ff_inlink_consume_samples(i32* %26, i64 %29, i64 %32, %struct.TYPE_12__** %7)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %2, align 4
  br label %140

38:                                               ; preds = %1
  %39 = load i32, i32* %9, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %132

41:                                               ; preds = %38
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %46, %41
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = call i32 @ff_filter_frame(i32* %55, %struct.TYPE_12__* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = call i64 @ff_inlink_queued_samples(i32* %58)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = call i32 @ff_filter_set_ready(%struct.TYPE_13__* %65, i32 100)
  br label %67

67:                                               ; preds = %64, %54
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %2, align 4
  br label %140

69:                                               ; preds = %46
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call %struct.TYPE_12__* @ff_get_audio_buffer(i32* %70, i64 %73)
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %8, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = icmp ne %struct.TYPE_12__* %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %69
  %78 = call i32 @av_frame_free(%struct.TYPE_12__** %7)
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = call i32 @AVERROR(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %140

81:                                               ; preds = %69
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %84 = call i32 @av_frame_copy_props(%struct.TYPE_12__* %82, %struct.TYPE_12__* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = call i32 @av_frame_free(%struct.TYPE_12__** %8)
  %89 = call i32 @av_frame_free(%struct.TYPE_12__** %7)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %2, align 4
  br label %140

91:                                               ; preds = %81
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @av_samples_copy(i32 %94, i32 %97, i32 0, i32 0, i64 %100, i32 %103, i32 %106)
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %116, %119
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @av_samples_set_silence(i32 %110, i64 %113, i64 %120, i32 %123, i32 %126)
  %128 = call i32 @av_frame_free(%struct.TYPE_12__** %7)
  %129 = load i32*, i32** %5, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %131 = call i32 @ff_filter_frame(i32* %129, %struct.TYPE_12__* %130)
  store i32 %131, i32* %2, align 4
  br label %140

132:                                              ; preds = %38
  %133 = load i32*, i32** %4, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @FF_FILTER_FORWARD_STATUS(i32* %133, i32* %134)
  %136 = load i32*, i32** %5, align 8
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @FF_FILTER_FORWARD_WANTED(i32* %136, i32* %137)
  %139 = load i32, i32* @FFERROR_NOT_READY, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %132, %91, %87, %77, %67, %36
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK(i32*, i32*) #1

declare dso_local i32 @ff_inlink_consume_samples(i32*, i64, i64, %struct.TYPE_12__**) #1

declare dso_local i32 @ff_filter_frame(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @ff_inlink_queued_samples(i32*) #1

declare dso_local i32 @ff_filter_set_ready(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_12__* @ff_get_audio_buffer(i32*, i64) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_12__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @av_samples_copy(i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @av_samples_set_silence(i32, i64, i64, i32, i32) #1

declare dso_local i32 @FF_FILTER_FORWARD_STATUS(i32*, i32*) #1

declare dso_local i32 @FF_FILTER_FORWARD_WANTED(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
